using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.Script.Serialization;

namespace TeamWebsite
{
    /// <summary>
    /// Summary description for VideoService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class VideoService : System.Web.Services.WebService
    {

        [WebMethod]
        public void getAllSubjects()
        {
            List<Subjectlass> listSubjects = new List<Subjectlass>();
            string cs = ConfigurationManager.ConnectionStrings["FBPDatabase"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("Select * from Subjects",con);
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    Subjectlass subject = new Subjectlass();
                    subject.SubjectName = reader["SubjectName"].ToString();
                    subject.Description = reader["Description"].ToString();
                    subject.TutorName = reader["TutorName"].ToString();
                    subject.TutorId = reader["TutorId"].ToString();
                    subject.ImageLocation = reader["ImageLocation"].ToString();
                    listSubjects.Add(subject);
                }
                
                

            }
            JavaScriptSerializer js = new JavaScriptSerializer();
            Context.Response.Write(js.Serialize(listSubjects));
        }

    }
}
