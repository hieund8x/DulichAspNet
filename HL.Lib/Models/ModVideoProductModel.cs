using System;
using System.Collections.Generic;

using HL.Core.Models;

namespace HL.Lib.Models
{
    public class ModVideoProductEntity : EntityBase
    {
        
        #region Autogen by HL

        [DataInfo]
        public override int ID { get; set; }

        [DataInfo]
        public string LinkVideo { get; set; }

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

    public class ModVideoProductService : ServiceBase<ModVideoProductEntity>
    {

        #region Autogen by HL

        private ModVideoProductService()
            : base("[Mod_VideoProduct]")
        {

        }

        private static ModVideoProductService _Instance = null;
        public static ModVideoProductService Instance
        {
            get
            {
                if (_Instance == null)
                    _Instance = new ModVideoProductService();

                return _Instance;
            }
        }

        #endregion

        public ModVideoProductEntity GetByID(int id)
        {
            return base.CreateQuery()
               .Where(o => o.ID == id)
               .ToSingle();
        }

    }
}