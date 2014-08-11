using System;
using System.Collections.Generic;

using HL.Core.Models;

namespace HL.Lib.Models
{
    public class ModImagesProductEntity : EntityBase
    {
        
        #region Autogen by HL

        [DataInfo]
        public override int ID { get; set; }

        [DataInfo]
        public string File { get; set; }

        [DataInfo]
        public int ProductID { get; set; }

        #endregion      
  
        private WebMenuEntity _oProduct = null;
        public WebMenuEntity getProduct()
        {
            if (_oProduct == null && ProductID > 0)
                _oProduct = WebMenuService.Instance.GetByID_Cache(ProductID);

            if (_oProduct == null)
                _oProduct = new WebMenuEntity();

            return _oProduct;
        }

    }

    public class ModImagesProductService : ServiceBase<ModImagesProductEntity>
    {

        #region Autogen by HL

        private ModImagesProductService()
            : base("[Mod_ImagesProduct]")
        {

        }

        private static ModImagesProductService _Instance = null;
        public static ModImagesProductService Instance
        {
            get
            {
                if (_Instance == null)
                    _Instance = new ModImagesProductService();

                return _Instance;
            }
        }

        #endregion

        public ModImagesProductEntity GetByID(int id)
        {
            return base.CreateQuery()
               .Where(o => o.ID == id)
               .ToSingle();
        }

    }
}