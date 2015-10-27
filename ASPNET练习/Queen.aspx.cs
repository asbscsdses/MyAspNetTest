using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNET练习
{
    public partial class Queen : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ListBox1.Items.Clear();

            var queenCount = 8;

            Int32[] x = new int[queenCount + 1];

            for (x[1] = 0; x[1] < queenCount; x[1]++)
            {
                for (x[2] = 0; x[2] < queenCount; x[2]++)
                {
                    for (x[3] = 0; x[3] < queenCount; x[3]++)
                    {
                        for (x[4] = 0; x[4] < queenCount; x[4]++)
                        {
                            for (x[5] = 0; x[5] < queenCount; x[5]++)
                            {
                                for (x[6] = 0; x[6] < queenCount; x[6]++)
                                {
                                    for (x[7] = 0; x[7] < queenCount; x[7]++)
                                    {
                                        for (x[8] = 0; x[8] < queenCount; x[8]++)
                                        {
                                            for (int m = 1; m < queenCount; m++)
                                            {
                                                for (int n = m + 1; n <= queenCount; n++)
                                                {
                                                    if (x[m] == x[n] || Math.Abs(x[n] - x[m]) == n - m)
                                                    {
                                                        goto WrongAnswer;
                                                    }
                                                }
                                            }

                                            //RightAnswer
                                            var li = new ListItem();
                                            for (int i = 1; i <= queenCount; i++)
                                            {
                                                li.Text += x[i].ToString();
                                            }

                                            ListBox1.Items.Add(li);

                                            WrongAnswer:
                                            continue;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }

            Label1.Text = ListBox1.Items.Count.ToString();
        }

        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            var table = new Table();

            var queenPos = ListBox1.SelectedItem.Text.ToCharArray();

            for (int r = 0; r < 8; r++)
            {
                var row = new TableRow();

                for (int c = 0; c < 8; c++)
                {
                    var cell = new TableCell();

                    if ((r + c) % 2 == 1)
                    {
                        cell.CssClass = "black";
                    }

                    if (c.ToString() == queenPos[r].ToString())
                    {
                        cell.CssClass += " queen";
                    }

                    row.Cells.Add(cell);
                }

                table.Rows.Add(row);
            }

            holder.Controls.Add(table);
        }
    }
}