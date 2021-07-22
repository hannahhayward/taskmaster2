namespace taskmaster2.Models
{
  public class List
  {
    public int Id {get; set;}
    public string Title {get;set;}
    public int creatorId {get;set}

    //virtual
    public Task Task {get;set;}
  }
}