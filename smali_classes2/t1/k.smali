.class public abstract Lt1/k;
.super Lt1/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt1/k$h;,
        Lt1/k$g;,
        Lt1/k$d;,
        Lt1/k$j;,
        Lt1/k$c;,
        Lt1/k$f;,
        Lt1/k$e;,
        Lt1/k$b;,
        Lt1/k$i;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lt1/k<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lt1/k$b<",
        "TMessageType;TBuilderType;>;>",
        "Lt1/a<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field protected memoizedSerializedSize:I

.field protected unknownFields:Lt1/z;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lt1/a;-><init>()V

    invoke-static {}, Lt1/z;->c()Lt1/z;

    move-result-object v0

    iput-object v0, p0, Lt1/k;->unknownFields:Lt1/z;

    const/4 v0, -0x1

    iput v0, p0, Lt1/k;->memoizedSerializedSize:I

    return-void
.end method

.method protected static emptyIntList()Lt1/m$c;
    .locals 1

    invoke-static {}, Lt1/l;->d()Lt1/l;

    move-result-object v0

    return-object v0
.end method

.method protected static emptyProtobufList()Lt1/m$e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lt1/m$e<",
            "TE;>;"
        }
    .end annotation

    invoke-static {}, Lt1/v;->b()Lt1/v;

    move-result-object v0

    return-object v0
.end method

.method private final ensureUnknownFieldsInitialized()V
    .locals 2

    iget-object v0, p0, Lt1/k;->unknownFields:Lt1/z;

    invoke-static {}, Lt1/z;->c()Lt1/z;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lt1/z;->j()Lt1/z;

    move-result-object v0

    iput-object v0, p0, Lt1/k;->unknownFields:Lt1/z;

    :cond_0
    return-void
.end method

.method static varargs invokeOrDie(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1

    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/lang/Error;

    throw p0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected exception thrown by generated accessor method."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected static mutableCopy(Lt1/m$c;)Lt1/m$c;
    .locals 1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    :goto_0
    invoke-interface {p0, v0}, Lt1/m$c;->mutableCopyWithCapacity(I)Lt1/m$c;

    move-result-object p0

    return-object p0
.end method

.method protected static mutableCopy(Lt1/m$e;)Lt1/m$e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lt1/m$e<",
            "TE;>;)",
            "Lt1/m$e<",
            "TE;>;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    :goto_0
    invoke-interface {p0, v0}, Lt1/m$e;->mutableCopyWithCapacity(I)Lt1/m$e;

    move-result-object p0

    return-object p0
.end method

.method static parsePartialFrom(Lt1/k;Lt1/f;Lt1/i;)Lt1/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lt1/k<",
            "TT;*>;>(TT;",
            "Lt1/f;",
            "Lt1/i;",
            ")TT;"
        }
    .end annotation

    sget-object v0, Lt1/k$i;->k:Lt1/k$i;

    invoke-virtual {p0, v0}, Lt1/k;->dynamicMethod(Lt1/k$i;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lt1/k;

    :try_start_0
    sget-object v0, Lt1/k$i;->i:Lt1/k$i;

    invoke-virtual {p0, v0, p1, p2}, Lt1/k;->dynamicMethod(Lt1/k$i;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lt1/k;->makeImmutable()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lt1/n;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lt1/n;

    throw p0

    :cond_0
    throw p0
.end method


# virtual methods
.method protected dynamicMethod(Lt1/k$i;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lt1/k;->dynamicMethod(Lt1/k$i;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method protected dynamicMethod(Lt1/k$i;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lt1/k;->dynamicMethod(Lt1/k$i;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method protected abstract dynamicMethod(Lt1/k$i;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lt1/k;->getDefaultInstanceForType()Lt1/k;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    :try_start_0
    sget-object v1, Lt1/k$d;->a:Lt1/k$d;

    check-cast p1, Lt1/k;

    invoke-virtual {p0, v1, p1}, Lt1/k;->visit(Lt1/k$j;Lt1/k;)V
    :try_end_0
    .catch Lt1/k$d$a; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    return v2
.end method

.method equals(Lt1/k$d;Lt1/r;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p2, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lt1/k;->getDefaultInstanceForType()Lt1/k;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p2, Lt1/k;

    invoke-virtual {p0, p1, p2}, Lt1/k;->visit(Lt1/k$j;Lt1/k;)V

    return v0
.end method

.method public final getDefaultInstanceForType()Lt1/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    sget-object v0, Lt1/k$i;->m:Lt1/k$i;

    invoke-virtual {p0, v0}, Lt1/k;->dynamicMethod(Lt1/k$i;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lt1/k;

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lt1/r;
    .locals 0

    invoke-virtual {p0}, Lt1/k;->getDefaultInstanceForType()Lt1/k;

    move-result-object p0

    return-object p0
.end method

.method public final getParserForType()Lt1/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lt1/u<",
            "TMessageType;>;"
        }
    .end annotation

    sget-object v0, Lt1/k$i;->n:Lt1/k$i;

    invoke-virtual {p0, v0}, Lt1/k;->dynamicMethod(Lt1/k$i;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lt1/u;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lt1/a;->memoizedHashCode:I

    if-nez v0, :cond_0

    new-instance v0, Lt1/k$g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lt1/k$g;-><init>(Lt1/k$a;)V

    invoke-virtual {p0, v0, p0}, Lt1/k;->visit(Lt1/k$j;Lt1/k;)V

    invoke-static {v0}, Lt1/k$g;->m(Lt1/k$g;)I

    move-result v0

    iput v0, p0, Lt1/a;->memoizedHashCode:I

    :cond_0
    iget p0, p0, Lt1/a;->memoizedHashCode:I

    return p0
.end method

.method hashCode(Lt1/k$g;)I
    .locals 2

    iget v0, p0, Lt1/a;->memoizedHashCode:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lt1/k$g;->m(Lt1/k$g;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lt1/k$g;->n(Lt1/k$g;I)I

    invoke-virtual {p0, p1, p0}, Lt1/k;->visit(Lt1/k$j;Lt1/k;)V

    invoke-static {p1}, Lt1/k$g;->m(Lt1/k$g;)I

    move-result v1

    iput v1, p0, Lt1/a;->memoizedHashCode:I

    invoke-static {p1, v0}, Lt1/k$g;->n(Lt1/k$g;I)I

    :cond_0
    iget p0, p0, Lt1/a;->memoizedHashCode:I

    return p0
.end method

.method public final isInitialized()Z
    .locals 2

    sget-object v0, Lt1/k$i;->g:Lt1/k$i;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lt1/k;->dynamicMethod(Lt1/k$i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected makeImmutable()V
    .locals 1

    sget-object v0, Lt1/k$i;->j:Lt1/k$i;

    invoke-virtual {p0, v0}, Lt1/k;->dynamicMethod(Lt1/k$i;)Ljava/lang/Object;

    iget-object p0, p0, Lt1/k;->unknownFields:Lt1/z;

    invoke-virtual {p0}, Lt1/z;->e()V

    return-void
.end method

.method protected mergeVarintField(II)V
    .locals 0

    invoke-direct {p0}, Lt1/k;->ensureUnknownFieldsInitialized()V

    iget-object p0, p0, Lt1/k;->unknownFields:Lt1/z;

    invoke-virtual {p0, p1, p2}, Lt1/z;->h(II)Lt1/z;

    return-void
.end method

.method public final newBuilderForType()Lt1/k$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    sget-object v0, Lt1/k$i;->l:Lt1/k$i;

    invoke-virtual {p0, v0}, Lt1/k;->dynamicMethod(Lt1/k$i;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lt1/k$b;

    return-object p0
.end method

.method protected parseUnknownField(ILt1/f;)Z
    .locals 2

    invoke-static {p1}, Lt1/c0;->b(I)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-direct {p0}, Lt1/k;->ensureUnknownFieldsInitialized()V

    iget-object p0, p0, Lt1/k;->unknownFields:Lt1/z;

    invoke-virtual {p0, p1, p2}, Lt1/z;->f(ILt1/f;)Z

    move-result p0

    return p0
.end method

.method public final toBuilder()Lt1/k$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    sget-object v0, Lt1/k$i;->l:Lt1/k$i;

    invoke-virtual {p0, v0}, Lt1/k;->dynamicMethod(Lt1/k$i;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt1/k$b;

    invoke-virtual {v0, p0}, Lt1/k$b;->mergeFrom(Lt1/k;)Lt1/k$b;

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lt1/r$a;
    .locals 0

    invoke-virtual {p0}, Lt1/k;->toBuilder()Lt1/k$b;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lt1/t;->e(Lt1/r;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method visit(Lt1/k$j;Lt1/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt1/k$j;",
            "TMessageType;)V"
        }
    .end annotation

    sget-object v0, Lt1/k$i;->h:Lt1/k$i;

    invoke-virtual {p0, v0, p1, p2}, Lt1/k;->dynamicMethod(Lt1/k$i;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lt1/k;->unknownFields:Lt1/z;

    iget-object p2, p2, Lt1/k;->unknownFields:Lt1/z;

    invoke-interface {p1, v0, p2}, Lt1/k$j;->h(Lt1/z;Lt1/z;)Lt1/z;

    move-result-object p1

    iput-object p1, p0, Lt1/k;->unknownFields:Lt1/z;

    return-void
.end method
