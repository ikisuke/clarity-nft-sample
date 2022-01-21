(define-trait nft-trait 
  (
      ;; Last token Id
      (get-last-token-id () (response uint uint))

      ;; URI for metadata associated with the token
      (get-token-uri (uint) (response (optional (string-ascii 256)) uint))

      ;; owner of a given token identifier
      (get-owner (uint) (response (optional principal) uint))

      ;; Transfer from the sender to a new principal
      (transfer (uint principal principal) (response bool uint))
  )
)