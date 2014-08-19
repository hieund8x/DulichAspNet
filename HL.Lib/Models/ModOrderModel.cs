using System;
using System.Collections.Generic;

using HL.Core.Models;

namespace HL.Lib.Models
{
    public class ModOrderEntity : EntityBase
    {
        
        #region Autogen by HL

        [DataInfo]
        public override int ID { get; set; }

        [DataInfo]
        public string CustomerName { get; set; }

        [DataInfo]
        public string CustomerAddress { get; set; }

        [DataInfo]
        public string CustomerEmail { get; set; }

        [DataInfo]
        public string CusomerPhone { get; set; }

        [DataInfo]
        public int TourID { get; set; }

        [DataInfo]
        public string TourName { get; set; }

        [DataInfo]
        public DateTime StartDate { get; set; }

        [DataInfo]
        public DateTime EndDate { get; set; }

        [DataInfo]
        public int Adults { get; set; }

        [DataInfo]
        public int Children1 { get; set; }

        [DataInfo]
        public int Children2 { get; set; }

        [DataInfo]
        public decimal PriceTotal { get; set; }

        [DataInfo]
        public string Comment { get; set; }

        [DataInfo]
        public bool Activity { get; set; }

        #endregion      
  
        private ModTourEntity _oTour = null;
        public ModTourEntity getTour()
        {
            if (_oTour == null && TourID > 0)
                _oTour = ModTourService.Instance.GetByID(TourID);

            if (_oTour == null)
                _oTour = new ModTourEntity();

            return _oTour;
        }

    }

    public class ModOrderService : ServiceBase<ModOrderEntity>
    {

        #region Autogen by HL

        private ModOrderService()
            : base("[Mod_Order]")
        {

        }

        private static ModOrderService _Instance = null;
        public static ModOrderService Instance
        {
            get
            {
                if (_Instance == null)
                    _Instance = new ModOrderService();

                return _Instance;
            }
        }

        #endregion

        public ModOrderEntity GetByID(int id)
        {
            return base.CreateQuery()
               .Where(o => o.ID == id)
               .ToSingle();
        }

    }
}