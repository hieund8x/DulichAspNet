using System;
using System.Collections.Generic;

using HL.Core.Models;

namespace HL.Lib.Models
{
    public class ModImagesTourEntity : EntityBase
    {
        
        #region Autogen by HL

        [DataInfo]
        public override int ID { get; set; }

        [DataInfo]
        public int TourID { get; set; }

        [DataInfo]
        public string File { get; set; }

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

    public class ModImagesTourService : ServiceBase<ModImagesTourEntity>
    {

        #region Autogen by HL

        private ModImagesTourService()
            : base("[Mod_ImagesTour]")
        {

        }

        private static ModImagesTourService _Instance = null;
        public static ModImagesTourService Instance
        {
            get
            {
                if (_Instance == null)
                    _Instance = new ModImagesTourService();

                return _Instance;
            }
        }

        #endregion

        public ModImagesTourEntity GetByID(int id)
        {
            return base.CreateQuery()
               .Where(o => o.ID == id)
               .ToSingle();
        }

    }
}