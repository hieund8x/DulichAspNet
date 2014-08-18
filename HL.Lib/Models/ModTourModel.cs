using System;
using System.Collections.Generic;

using HL.Core.Models;

namespace HL.Lib.Models
{
    public class ModTourEntity : EntityBase
    {
        
        #region Autogen by HL

        [DataInfo]
        public override int ID { get; set; }

        [DataInfo]
        public int MenuID { get; set; }

        [DataInfo]
        public int State { get; set; }

        [DataInfo]
        public override string Name { get; set; }

        [DataInfo]
        public string Code { get; set; }

        [DataInfo]
        public string Tags { get; set; }

        [DataInfo]
        public string Summary { get; set; }

        [DataInfo]
        public decimal Price { get; set; }

        [DataInfo]
        public decimal SalePrice { get; set; }

        [DataInfo]
        public string TimeTotal { get; set; }

        [DataInfo]
        public string StartDate { get; set; }

        [DataInfo]
        public string Schedule { get; set; }

        [DataInfo]
        public string Locations { get; set; }

        [DataInfo]
        public string Content { get; set; }

        [DataInfo]
        public string ScheduleDetail { get; set; }

        [DataInfo]
        public string File { get; set; }

        [DataInfo]
        public string Img_Slide { get; set; }

        [DataInfo]
        public string Map { get; set; }

        [DataInfo]
        public string Vehicle { get; set; }

        [DataInfo]
        public DateTime Published { get; set; }

        [DataInfo]
        public int Order { get; set; }

        [DataInfo]
        public bool Activity { get; set; }

        #endregion      
  
        private WebMenuEntity _oMenu = null;
        public WebMenuEntity getMenu()
        {
            if (_oMenu == null && MenuID > 0)
                _oMenu = WebMenuService.Instance.GetByID_Cache(MenuID);

            if (_oMenu == null)
                _oMenu = new WebMenuEntity();

            return _oMenu;
        }

    }

    public class ModTourService : ServiceBase<ModTourEntity>
    {

        #region Autogen by HL

        private ModTourService()
            : base("[Mod_Tour]")
        {

        }

        private static ModTourService _Instance = null;
        public static ModTourService Instance
        {
            get
            {
                if (_Instance == null)
                    _Instance = new ModTourService();

                return _Instance;
            }
        }

        #endregion

        public ModTourEntity GetByID(int id)
        {
            return base.CreateQuery()
               .Where(o => o.ID == id)
               .ToSingle();
        }

    }
}