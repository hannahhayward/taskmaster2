using System.Data;
using Dapper;
using taskmaster2.Models;

namespace taskmaster2.Repositories
{
    public class ListsRepository
    {
        private readonly IDbConnection _db;
        public ListsRepository(IDbConnection db)
        {
            _db = db;
        }
        public List Create(List list)
        {
            string sql = @"
            INSERT INTO 
            lists(title)
            VALUES (@title);
            SELECT LAST_INSERT_ID;";
            int id = _db.ExecuteScalar<int>(sql, list);
            return list;
        }
        public List GetAllLists(int id)
        {
            string sql = @"
            SELECT * FROM Lists l
            JOIN Profiles p ON p.id = l.creatorId"
        }
    }
}