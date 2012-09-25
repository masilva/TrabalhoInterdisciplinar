using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TP_PSI.Models;

namespace TP_PSI.Controllers
{
    /// <summary>
    /// Controller do Médico
    /// </summary>
    public class MedicoController : Controller
    {
        //Instancia do banco
        PSIEntities banco = new PSIEntities();
        #region Metodos
        //
        // GET: /Medico/

        [Authorize]
        public ActionResult Index()
        {
            return View(banco.Medico.ToList());
        }

        //
        // GET: /Medico/Details/5
        
        [Authorize] 
        public ActionResult Details(int id)
        {
            return View(banco.Medico.Single(a => a.CodMed == id));
        }

        //
        // GET: /Medico/Create

        [Authorize] 
        public ActionResult Create()
        {
            return View();
        } 

        //
        // POST: /Medico/Create

        [HttpPost]
        public ActionResult Create(Medico collection)
        {
            try
            {                
                banco.AddToMedico(collection);
                banco.SaveChanges();
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
        
        //
        // GET: /Medico/Edit/5

        [Authorize] 
        public ActionResult Edit(int id)
        {
            return View(banco.Medico.Single(a => a.CodMed == id));
        }

        //
        // POST: /Medico/Edit/5

        [HttpPost]
        public ActionResult Edit(int id, Medico collection)
        {
            try
            {
                Medico accountEdited = banco.Medico.Single(a => a.CodMed == id);
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
        // GET: /Medico/Delete/5

        [Authorize] 
        public ActionResult Delete(int id)
        {
            return View(banco.Medico.Single(a => a.CodMed == id));
        }

        //
        // POST: /Medico/Delete/5

        [HttpPost]
        public ActionResult Delete(int id, Medico collection)
        {
            try
            {
                Medico accountEdited = banco.Medico.Single(a => a.CodMed == id);
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
