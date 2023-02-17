CREATE proc addFromCart(@uId Varchar(100))
as
BEGIN
    insert into Orders (productId, userId)
    select productId, userId from Cart
    where userId = @uId
END
BEGIN
    DELETE FROM Cart 
    WHERE userId = @uId
END
GO
