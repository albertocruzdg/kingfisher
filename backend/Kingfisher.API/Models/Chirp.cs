using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Kingfisher.API.Models
{
    public class Chirp
    {
        public Guid Id { get; set; }

        public string Text { get; set; }

        public DateTimeOffset TimeStamp { get; set; }
    }
}
