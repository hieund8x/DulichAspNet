using System;
using System.Data;
using System.Collections;
using System.IO;

namespace HL.Lib.Global
{
    internal class CompareFileByDate : IComparer
    {
        int IComparer.Compare(object a, object b)
        {
            FileInfo fia = new FileInfo((string)a);
            FileInfo fib = new FileInfo((string)b);

            DateTime cta = fia.LastWriteTime;
            DateTime ctb = fib.LastWriteTime;

            return DateTime.Compare(ctb, cta);
        }
    }

   public class File
    {
       public static string FormatFileName(string fileName)
       {
           return System.Text.RegularExpressions.Regex.Replace(fileName, @"[^a-zA-Z_0-9\.]", "_");
       }

       public static string GetFile(string path)
       {
           int index = 0;
           while (true)
           {
               index++;

               string _sFile = path;

               if (index > 1)
                   _sFile = Path.Combine(Path.GetDirectoryName(path), Path.GetFileNameWithoutExtension(path) + "(" + index + ")." + Path.GetExtension(path).Replace(".", ""));

               if (!System.IO.File.Exists(_sFile))
                   return _sFile;
           }
       }

        public static string ReadText(string path)
        {
            string _s = String.Empty;
            if (System.IO.File.Exists(path))
            {
                System.IO.StreamReader _StreamReader = new System.IO.StreamReader(path);
                _s = _StreamReader.ReadToEnd();
                _StreamReader.Close();
            }
            return _s;
        }

        public static void Delete(string path)
        {
            if (System.IO.File.Exists(path))
                System.IO.File.Delete(path);
        }

        public static void WriteText(string path)
        {
            WriteText(path, String.Empty, false);
        }

        public static void WriteText(string path, string content)
        {
            WriteText(path, content, true);
        }

        public static void WriteText(string path, string content, bool is_new)
        {
            System.IO.StreamWriter _StreamWriter = new System.IO.StreamWriter(path, is_new);
            _StreamWriter.WriteLine(content);
            _StreamWriter.Close();
        }

        public static void WriteTextUnicode(string path)
        {
            WriteTextUnicode(path, String.Empty, false);
        }

        public static void WriteTextUnicode(string path, string content)
        {
            WriteTextUnicode(path, content, true);
        }

        public static void WriteTextUnicode(string path, string content, bool is_new)
        {
            System.IO.StreamWriter _StreamWriter = new System.IO.StreamWriter(path, is_new, System.Text.Encoding.Unicode);
            _StreamWriter.WriteLine(content);
            _StreamWriter.Close();
        }

        public static DataTable GetListFile(int PageIndex, 
            int PageSize, 
            ref int TotalRecord, 
            string Path, 
            string searchPattern)
        {
            IComparer fileComparer = new CompareFileByDate();

            return GetListFile(PageIndex, 
                PageSize, 
                ref TotalRecord, 
                Path, 
                searchPattern, 
                fileComparer);
        }

        public static DataTable GetListFile(int PageIndex, 
            int PageSize, 
            ref int TotalRecord, 
            string Path, 
            string searchPattern, 
            IComparer fileComparer)
        {
            if (!System.IO.Directory.Exists(Path))
                return null;

            DataTable _dt = new DataTable();

            _dt.Columns.Add(new DataColumn("Name", typeof(string)));
            _dt.Columns.Add(new DataColumn("FullName", typeof(string)));
            _dt.Columns.Add(new DataColumn("Size", typeof(float)));
            _dt.Columns.Add(new DataColumn("Path", typeof(string)));
            _dt.Columns.Add(new DataColumn("Date", typeof(DateTime)));

            string[] ArrFiles = System.IO.Directory.GetFiles(Path, searchPattern);

            TotalRecord = ArrFiles.Length;

            System.Array.Sort(ArrFiles, fileComparer);

            for (int i = PageIndex * PageSize; i < PageSize * (PageIndex + 1) && i < ArrFiles.Length; i++)
            {
                string _PathFile = ArrFiles[i];

                System.IO.FileInfo _FlieInfo = new System.IO.FileInfo(_PathFile);

                string _FileName = System.IO.Path.GetFileName(_PathFile);
                string _DirName = System.IO.Path.GetFileName(System.IO.Path.GetDirectoryName(_PathFile));

                DataRow dr = _dt.NewRow();

                dr["Name"] = _FileName;
                dr["FullName"] = Path + _DirName + "/" + _FileName;
                dr["Size"] = (float)((float)_FlieInfo.Length / (float)1024);
                dr["Date"] = _FlieInfo.LastWriteTime;
                dr["Path"] = _PathFile;

                _dt.Rows.Add(dr);
            }

            return _dt;
        }
    }
}
