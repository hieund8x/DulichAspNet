using System;
using System.Collections.Generic;

using HL.Lib.MVC;
using HL.Lib.Models;
using HL.Lib.Global;

namespace HL.Lib.CPControllers
{
    public class ModVideoProductController : CPController
    {
        public ModVideoProductController()
        {
            //khoi tao Service
            DataService = ModVideoProductService.Instance;
            CheckPermissions = true;
        }

        public void ActionIndex(ModVideoProductModel model)
        {
            // sap xep tu dong
            string orderBy = AutoSort(model.Sort);

            // tao danh sach
            var dbQuery = ModVideoProductService.Instance.CreateQuery()
                                .Take(model.PageSize)
                                .OrderBy(orderBy)
                                .Skip(model.PageIndex * model.PageSize);

            ViewBag.Data = dbQuery.ToList();
            model.TotalRecord = dbQuery.TotalRecord;
            ViewBag.Model = model;
        }

        public void ActionAdd(ModVideoProductModel model)
        {
            if (model.RecordID > 0)
            {
                entity = ModVideoProductService.Instance.GetByID(model.RecordID);

                // khoi tao gia tri mac dinh khi update
            }
            else
            {
                entity = new ModVideoProductEntity();

                // khoi tao gia tri mac dinh khi insert
            }

            ViewBag.Data = entity;
            ViewBag.Model = model;
        }

        public void ActionSave(ModVideoProductModel model)
        {
            if (ValidSave(model))
               SaveRedirect();
        }

        public void ActionApply(ModVideoProductModel model)
        {
            if (ValidSave(model))
               ApplyRedirect(model.RecordID, entity.ID);
        }

        public void ActionSaveNew(ModVideoProductModel model)
        {
            if (ValidSave(model))
               SaveNewRedirect(model.RecordID, entity.ID);
        }

        #region private func

        private ModVideoProductEntity entity = null;

        private bool ValidSave(ModVideoProductModel model)
        {
            TryUpdateModel(entity);

            //chong hack
            entity.ID = model.RecordID;

            ViewBag.Data = entity;
            ViewBag.Model = model;

            CPViewPage.Message.MessageType = Message.MessageTypeEnum.Error;

            //kiem tra quyen han
            if ((model.RecordID < 1 && !CPViewPage.UserPermissions.Add) || (model.RecordID > 0 && !CPViewPage.UserPermissions.Edit))
                CPViewPage.Message.ListMessage.Add("Quyền hạn chế.");

            if (CPViewPage.Message.ListMessage.Count == 0)
            {

                //save
                ModVideoProductService.Instance.Save(entity);

                return true;
            }

            return false;
        }

        #endregion
    }

    public class ModVideoProductModel : DefaultModel
    {
    }
}

