{% docs order_status %}
	
One of the following values: 

| status         | definition                                       |
|----------------|--------------------------------------------------|
| placed         | Order placed, not yet shipped                    |
| shipped        | Order has been shipped, not yet been delivered   |
| completed      | Order has been received by customers             |
| return pending | Customer indicated they want to return this item |
| returned       | Item has been returned                           |

{% enddocs %}

{% docs order_date %}
	
YYYY-MM-DD 

example table:

| YYYY | MM | DD | YYYY-MM-DD |
|------|----|----|------------|
| 2021 | 03 | 10 | 2021-03-10 |
| 2020 | 04 | 07 | 2021-04-07 |

{% enddocs %}