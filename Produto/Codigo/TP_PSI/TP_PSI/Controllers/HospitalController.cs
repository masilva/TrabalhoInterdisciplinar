using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TP_PSI.Models;

namespace TP_PSI.Controllers
{
    /// <summary>
    /// Controller do Hospital
    /// </summary>
    public class HospitalController : Controller
    {
        //Instancia do banco
        PSIEntities banco = new PSIEntities();        
        #region Metodos
        //
        // GET: /Hospital/
        [Authorize]
        public ActionResult Index()
        {
            return View(banco.Hospital.ToList());
        }

        //
        // GET: /Hospital/Details/5
        [Authorize]
        public ActionResult Details(int id)
        {
            return View(banco.Hospital.Single(a => a.HospitalId == id));
        }

        //
        // GET: /Hospital/Create
        [Authorize]
        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /Hospital/Create
        [HttpPost]
        public ActionResult Create(Hospital collection)
        {
            try
            {
                banco.AddToHospital(collection);
                banco.SaveChanges();
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        //
        // GET: /Hospital/Edit/5
        [Authorize]
        public ActionResult Edit(int id)
        {
            return View(banco.Hospital.Single(a => a.HospitalId == id));
        }

        //
        // POST: /Hospital/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, Hospital collection)
        {
            try
            {

                Hospital accountEdited = banco.Hospital.Single(a => a.HospitalId == id);
                TryUpdateModel(accountEdited);
                banco.SaveChanges();

                return RedirectToAction("Details", new { id = id });
            }
            catch
            {
                return View();
            }
        }

        //
        // GET: /Hospital/Delete/5
        [Authorize]
        public ActionResult Delete(int id)
        {

            return View(banco.Hospital.Single(a => a.HospitalId == id));
        }

        //
        // POST: /Hospital/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                Hospital accountEdited = banco.Hospital.Single(a => a.HospitalId == id);
                banco.DeleteObject(accountEdited);
                banco.SaveChanges();


                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
        #endregion
    }        
}
