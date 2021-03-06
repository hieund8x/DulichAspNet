﻿using System;

using HL.Core.Design;
using HL.Lib.Models;
using HL.Lib.Global;

namespace HL.Lib.Design
{
    public class EditPage : ViewPageDesign
    {
        public EditPage()
        {
            PageService = SysPageService.Instance;
            TemplateService = SysTemplateService.Instance;
            ModuleService = SysModuleService.Instance;

            int RecordID = HL.Core.Web.HttpQueryString.GetValue("id").ToInt();

            if (RecordID > 0)
            {
                CurrentPage = SysPageService.Instance.GetByID(RecordID);

                if(CurrentPage != null)
                    CurrentTemplate = SysTemplateService.Instance.GetByID(CurrentPage.TemplateID);
            }
        }

        protected override void OnPreInit(EventArgs e)
        {
            if (CurrentTemplate == null || CurrentPage == null)
            {
                Response.End();
                return;
            }

            if (CPLogin.CurrentUser == null || !CPLogin.CurrentUser.IsAdministrator)
            {
                Response.End();
                return;
            }

            string masterPageFile = "~/Views/Design/" + CurrentTemplate.File;
            if (!System.IO.File.Exists(Server.MapPath(masterPageFile)))
            {
                Response.End();
                return;
            }

            this.MasterPageFile = masterPageFile;

            base.OnPreInit(e);
        }
    }
}
