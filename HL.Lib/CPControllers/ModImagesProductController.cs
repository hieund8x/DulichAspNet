using System;
using System.Collections.Generic;

using HL.Lib.MVC;
using HL.Lib.Models;
using HL.Lib.Global;

namespace HL.Lib.CPControllers
{
    public class ModImagesProductController : CPController
    {
        public ModImagesProductController()
        {
            //khoi tao Service
            DataService = ModImagesProductService.Instance;
            CheckPermissions = true;
        }

        public void ActionIndex(ModImagesProductModel model)
        {
            // sap xep tu dong
            string orderBy = AutoSort(model.Sort);

            // tao danh sach
            var dbQuery = ModImagesProductService.Instance.CreateQuery()
                                .Take(model.PageSize)
                                .OrderBy(orderBy)
                                .Skip(model.PageIndex * model.PageSize);

            ViewBag.Data = dbQuery.ToList();
            model.TotalRecord = dbQuery.TotalRecord;
            ViewBag.Model = model;
        }

        public void ActionAdd(ModImagesProductModel model)
        {
            if (model.RecordID > 0)
            {
                entity = ModImagesProductService.Instance.GetByID(model.RecordID);

                // khoi tao gia tri mac dinh khi update
            }
            else
            {
                entity = new ModImagesProductEntity();

                // khoi tao gia tri mac dinh khi insert
            }

            ViewBag.Data = entity;
            ViewBag.Model = model;
        }

        public void ActionSave(ModImagesProductModel model)
        {
            if (ValidSave(model))
               SaveRedirect();
        }

        public void ActionApply(ModImagesProductModel model)
        {
            if (ValidSave(model))
               ApplyRedirect(model.RecordID, entity.ID);
        }

        public void ActionSaveNew(ModImagesProductModel model)
        {
            if (ValidSave(model))
               SaveNewRedirect(model.RecordID, entity.ID);
        }

        #region private func

        private ModImagesProductEntity entity = null;

        private bool ValidSave(ModImagesProductModel model)
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
                ModImagesProductService.Instance.Save(entity);

                return true;
            }

            return false;
        }

        #endregion
    }

    public class ModImagesProductModel : DefaultModel
    {
    }
}

