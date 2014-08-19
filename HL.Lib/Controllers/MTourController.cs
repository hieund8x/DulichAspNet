using System;

using HL.Lib.MVC;
using HL.Lib.Models;

namespace HL.Lib.Controllers
{
    public class MTourController : Controller
    {

        [HL.Core.MVC.PropertyInfo("Chuyên mục", "Type|Tour")]
        public int MenuID;

        //[HL.Core.MVC.PropertyInfo("Vị trí", "ConfigKey|Mod.TourState")]
        public int State;

        [HL.Core.MVC.PropertyInfo("Số lượng")]
        public int PageSize = 10;

        public void ActionIndex(MTourModel model)
        {
            if (ViewPage.CurrentPage.MenuID > 0)
               MenuID = ViewPage.CurrentPage.MenuID;

            var dbQuery = ModTourService.Instance.CreateQuery()
                            .Where(o => o.Activity == true)
                            .Where(State > 0, o => (o.State & State) == State)
                            .WhereIn(MenuID > 0, o => o.MenuID, WebMenuService.Instance.GetChildIDForWeb_Cache("Tour", MenuID, ViewPage.CurrentLang.ID))
                            .OrderByDesc(o => o.Order)
                            .Take(PageSize)
                            .Skip(PageSize * model.Page);

            ViewBag.Data = dbQuery.ToList();
            model.TotalRecord = dbQuery.TotalRecord;
            model.PageSize = PageSize;
            ViewBag.Model = model;
        }

        public void ActionDetail(string endCode)
        {
            var entity = ModTourService.Instance.CreateQuery()
                            .Where(o => o.Activity == true && o.Code == endCode)
                            //.WhereIn(MenuID > 0, o => o.MenuID, WebMenuService.Instance.GetChildIDForWeb_Cache("Tour", MenuID, ViewPage.CurrentLang.ID))
                            .ToSingle();

            if (entity != null)
            {
                ViewBag.Other = ModTourService.Instance.CreateQuery()
                                        .Where(o => o.Activity == true)
                                        .Where(o => o.ID != entity.ID)
                                        .Where(o=> o.MenuID == entity.MenuID)
                                        .WhereIn(MenuID > 0, o => o.MenuID, WebMenuService.Instance.GetChildIDForWeb_Cache("Tour", MenuID, ViewPage.CurrentLang.ID))
                                        .OrderByDesc(o => o.Order)
                                        .Take(PageSize)
                                        .ToList();

                ViewBag.Data = entity;
                SetObject["view.Meta"] = entity;
            }
            else
            {
                ViewPage.Error404();
            }
        }

        public void ActionAddOrder(ModOrderEntity entity)
        {
            if (entity.CustomerName.Trim() == string.Empty)
                ViewPage.Message.ListMessage.Add("Vui lòng nhập Họ tên.");
            if (entity.CustomerAddress.Trim() == string.Empty)
                ViewPage.Message.ListMessage.Add("Vui lòng Địa chỉ.");
            if (Global.Utils.GetEmailAddress(entity.CustomerEmail.Trim()) == string.Empty)
                ViewPage.Message.ListMessage.Add("Email không đúng định dạng.");
            if (entity.CusomerPhone.Trim() == string.Empty)
                ViewPage.Message.ListMessage.Add("Vui lòng nhập Số điện thoại.");
            if(DateTime.Compare(entity.StartDate, DateTime.Now)<=0)
                ViewPage.Message.ListMessage.Add("Ngày khởi hành không hợp lệ.");
            if (entity.Adults <= 0)
                ViewPage.Message.ListMessage.Add("Vui lòng nhập số lượng người tham gia.");
            //hien thi thong bao loi
            if (ViewPage.Message.ListMessage.Count > 0)
            {
                string message = @"Lỗi: \r\n";

                for (int i = 0; i < ViewPage.Message.ListMessage.Count; i++)
                    message += @"\r\n + " + ViewPage.Message.ListMessage[i];

                ViewPage.Alert(message);
            }
            else
            {
                entity.EndDate = DateTime.Now;
                entity.Activity = false;

                ModOrderService.Instance.Save(entity);
                entity = new ModOrderEntity();
                ViewPage.Alert(@"Đặt Tour thành công! \r\nChúng tôi sẽ liên hệ với bạn trong thời gian sớm nhất có thể để xác nhận. \r\nTrân trọng cảm ơn!");
            }
            ViewBag.entity = entity;
        }

    }

    public class MTourModel
    {
        private int _Page = 0;
        public int Page
        {
            get { return _Page; }
            set { _Page = value - 1; }
        }

        public int PageSize { get; set; }
        public int TotalRecord { get; set; }
    }
}
