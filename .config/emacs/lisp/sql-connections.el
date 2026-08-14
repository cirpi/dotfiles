



(setq sql-connection-alist
      '((mf-db (sql-product 'mysql)
               (sql-user "root")
               (sql-database "MUTUAL-FUND")
               (sql-server "nxtrade-dev-api.iouring.in")
               (sql-port 8452))
	))

(provide 'sql-connections)
