.class Lj5/d$i;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj5/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic g:Lj5/d;


# direct methods
.method private constructor <init>(Lj5/d;)V
    .locals 0

    iput-object p1, p0, Lj5/d$i;->g:Lj5/d;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lj5/d;Lj5/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lj5/d$i;-><init>(Lj5/d;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    iget-object p0, p0, Lj5/d$i;->g:Lj5/d;

    invoke-virtual {p0}, Lj5/d;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_1

    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/util/Map$Entry;

    iget-object p0, p0, Lj5/d$i;->g:Lj5/d;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lj5/d$m;->h:Lj5/d$m;

    invoke-virtual {p0, v0, v1}, Lj5/d;->i(Ljava/lang/Object;Lj5/d$m;)Lj5/d$j;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lj5/d$j;->get()Lj5/d$g;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Lj5/d$g;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Lj5/j;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lj5/d$h;

    iget-object p0, p0, Lj5/d$i;->g:Lj5/d;

    invoke-direct {v0, p0}, Lj5/d$h;-><init>(Lj5/d;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Map$Entry;

    iget-object p0, p0, Lj5/d$i;->g:Lj5/d;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lj5/d;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lj5/d$i;->g:Lj5/d;

    invoke-virtual {p0}, Lj5/d;->size()I

    move-result p0

    return p0
.end method
