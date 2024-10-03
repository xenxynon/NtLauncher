.class public final Lq5/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq5/g;
.implements Ljava/io/Serializable;


# instance fields
.field private final g:Lq5/g;

.field private final h:Lq5/g$b;


# direct methods
.method public constructor <init>(Lq5/g;Lq5/g$b;)V
    .locals 1

    const-string v0, "left"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "element"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq5/c;->g:Lq5/g;

    iput-object p2, p0, Lq5/c;->h:Lq5/g$b;

    return-void
.end method

.method private final c(Lq5/g$b;)Z
    .locals 1

    invoke-interface {p1}, Lq5/g$b;->getKey()Lq5/g$c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lq5/c;->get(Lq5/g$c;)Lq5/g$b;

    move-result-object p0

    invoke-static {p0, p1}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private final d(Lq5/c;)Z
    .locals 1

    :goto_0
    iget-object v0, p1, Lq5/c;->h:Lq5/g$b;

    invoke-direct {p0, v0}, Lq5/c;->c(Lq5/g$b;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p1, p1, Lq5/c;->g:Lq5/g;

    instance-of v0, p1, Lq5/c;

    if-eqz v0, :cond_1

    check-cast p1, Lq5/c;

    goto :goto_0

    :cond_1
    const-string v0, "null cannot be cast to non-null type kotlin.coroutines.CoroutineContext.Element"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lq5/g$b;

    invoke-direct {p0, p1}, Lq5/c;->c(Lq5/g$b;)Z

    move-result p0

    return p0
.end method

.method private final e()I
    .locals 2

    const/4 v0, 0x2

    :goto_0
    iget-object p0, p0, Lq5/c;->g:Lq5/g;

    instance-of v1, p0, Lq5/c;

    if-eqz v1, :cond_0

    check-cast p0, Lq5/c;

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_1
    if-nez p0, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lq5/c;

    if-eqz v0, :cond_0

    check-cast p1, Lq5/c;

    invoke-direct {p1}, Lq5/c;->e()I

    move-result v0

    invoke-direct {p0}, Lq5/c;->e()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-direct {p1, p0}, Lq5/c;->d(Lq5/c;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public fold(Ljava/lang/Object;Ly5/p;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Ly5/p<",
            "-TR;-",
            "Lq5/g$b;",
            "+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "operation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lq5/c;->g:Lq5/g;

    invoke-interface {v0, p1, p2}, Lq5/g;->fold(Ljava/lang/Object;Ly5/p;)Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Lq5/c;->h:Lq5/g$b;

    invoke-interface {p2, p1, p0}, Ly5/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public get(Lq5/g$c;)Lq5/g$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lq5/g$b;",
            ">(",
            "Lq5/g$c<",
            "TE;>;)TE;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lq5/c;->h:Lq5/g$b;

    invoke-interface {v0, p1}, Lq5/g$b;->get(Lq5/g$c;)Lq5/g$b;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lq5/c;->g:Lq5/g;

    instance-of v0, p0, Lq5/c;

    if-eqz v0, :cond_1

    check-cast p0, Lq5/c;

    goto :goto_0

    :cond_1
    invoke-interface {p0, p1}, Lq5/g;->get(Lq5/g$c;)Lq5/g$b;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lq5/c;->g:Lq5/g;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object p0, p0, Lq5/c;->h:Lq5/g$b;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public minusKey(Lq5/g$c;)Lq5/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq5/g$c<",
            "*>;)",
            "Lq5/g;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lq5/c;->h:Lq5/g$b;

    invoke-interface {v0, p1}, Lq5/g$b;->get(Lq5/g$c;)Lq5/g$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lq5/c;->g:Lq5/g;

    return-object p0

    :cond_0
    iget-object v0, p0, Lq5/c;->g:Lq5/g;

    invoke-interface {v0, p1}, Lq5/g;->minusKey(Lq5/g$c;)Lq5/g;

    move-result-object p1

    iget-object v0, p0, Lq5/c;->g:Lq5/g;

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lq5/h;->g:Lq5/h;

    if-ne p1, v0, :cond_2

    iget-object p0, p0, Lq5/c;->h:Lq5/g$b;

    goto :goto_0

    :cond_2
    new-instance v0, Lq5/c;

    iget-object p0, p0, Lq5/c;->h:Lq5/g$b;

    invoke-direct {v0, p1, p0}, Lq5/c;-><init>(Lq5/g;Lq5/g$b;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public plus(Lq5/g;)Lq5/g;
    .locals 0

    invoke-static {p0, p1}, Lq5/g$a;->a(Lq5/g;Lq5/g;)Lq5/g;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v1, Lq5/c$a;->g:Lq5/c$a;

    const-string v2, ""

    invoke-virtual {p0, v2, v1}, Lq5/c;->fold(Ljava/lang/Object;Ly5/p;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
