using System;
using System.Collections.Generic;

using HL.Lib.MVC;
using HL.Lib.Models;
using HL.Lib.Global;

namespace HL.Lib.CPControllers
{
    public class ModImagesTourController : CPController
    {
        public ModImagesTourController()
        {
            //khoi tao Service
            DataService = ModImagesTourService.Instance;
            CheckPermissions = true;
        }

        public void ActionIndex(ModImagesTourModel model)
        {
            // sap xep tu dong
            string orderBy = AutoSort(model.Sort);

            // tao danh sach
            var dbQuery = ModImagesTourService.Instance.CreateQuery()
                                .Take(model.PageSize)
                                .OrderBy(orderBy)
                                .Skip(model.PageIndex * model.PageSize);

            ViewBag.Data = dbQuery.ToList();
            model.TotalRecord = dbQuery.TotalRecord;
            ViewBag.Model = model;
        }

        public void ActionAdd(ModImagesTourModel model)
        {
            if (model.RecordID > 0)
            {
                entity = ModImagesTourService.Instance.GetByID(model.RecordID);

                // khoi tao gia tri mac dinh khi update
            }
            else
            {
                entity = new ModImagesTourEntity();

                // khoi tao gia tri mac dinh khi insert
                entity.Activity = CPViewPage.UserPermissions.Approve;
            }

            ViewBag.Data = entity;
            ViewBag.Model = model;
        }

        public void ActionSave(ModImagesTourModel model)
        {
            if (ValidSave(model))
               SaveRedirect();
        }

        public void ActionApply(ModImagesTourModel model)
        {
            if (ValidSave(model))
               ApplyRedirect(model.RecordID, entity.ID);
        }

        public void ActionSaveNew(ModImagesTourModel model)
        {
            if (ValidSave(model))
               SaveNewRedirect(model.RecordID, entity.ID);
        }

        #region private func

        private ModImagesTourEntity entity = null;

        private bool ValidSave(ModImagesTourModel model)
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
                ModImagesTourService.Instance.Save(entity);

                return true;
            }

            return false;
        }

        #endregion
    }

    public class ModImagesTourModel : DefaultModel
    {
    }
}

