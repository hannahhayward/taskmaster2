using System.ComponentModel.DataAnnotations;

namespace taskmaster2.Models
{
  public class Task
{
  public int Id {get; set;}
  [Required]
  public string Body {get;set;}
  //virtual
  public List List {get;set;}
}
  
}