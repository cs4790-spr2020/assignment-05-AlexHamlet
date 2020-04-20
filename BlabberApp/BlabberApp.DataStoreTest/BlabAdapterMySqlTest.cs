using System.Collections;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using BlabberApp.DataStore.Adapters;
using BlabberApp.DataStore.Plugins;
using BlabberApp.Domain.Entities;

namespace BlabberApp.DataStoreTest
{
    [TestClass]
    public class BlabAdapter_MySql_UnitTests
    {
        private BlabAdapter adapter = new BlabAdapter(new MySqlBlab());

        [TestMethod]
        public void SQLCreate()
        {
            //mock User and Blab
            string email = "me@cool.com";
            User user = new User(email);
            Blab blab = new Blab("Test", user);
            //Add blab to database
            adapter.Add(blab);
            //get blab from database
            ArrayList actual = (ArrayList)adapter.GetByUserId(email);
            //Gets single blab from user
            Assert.AreEqual(1, actual.Count);
        }
    }
}
