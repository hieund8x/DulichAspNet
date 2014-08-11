﻿using System;

using HL.Core.Design;
using HL.Lib.Models;
using HL.Lib.Global;

namespace HL.Lib.Design
{
    public class EditTemplate : ViewPageDesign
    {
        public EditTemplate()
        {
            PageService = SysPageService.Instance;
            TemplateService = SysTemplateService.Instance;
            ModuleService = SysModuleService.Instance;

            int RecordID = HL.Core.Web.HttpQueryString.GetValue("id").ToInt();

            if (RecordID > 0)
                CurrentTemplate = SysTemplateService.Instance.GetByID(RecordID);
        }

        protected override void OnPreInit(EventArgs e)
        {
            if (CurrentTemplate == null)
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
