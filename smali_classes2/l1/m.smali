.class public final Ll1/m;
.super Ll1/j;
.source "SourceFile"


# instance fields
.field private final a:Ln1/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln1/h<",
            "Ljava/lang/String;",
            "Ll1/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ll1/j;-><init>()V

    new-instance v0, Ln1/h;

    invoke-direct {v0}, Ln1/h;-><init>()V

    iput-object v0, p0, Ll1/m;->a:Ln1/h;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    instance-of v0, p1, Ll1/m;

    if-eqz v0, :cond_0

    check-cast p1, Ll1/m;

    iget-object p1, p1, Ll1/m;->a:Ln1/h;

    iget-object p0, p0, Ll1/m;->a:Ln1/h;

    invoke-virtual {p1, p0}, Ljava/util/AbstractMap;->equals(Ljava/lang/Object;)Z

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

.method public h(Ljava/lang/String;Ll1/j;)V
    .locals 0

    if-nez p2, :cond_0

    sget-object p2, Ll1/l;->a:Ll1/l;

    :cond_0
    iget-object p0, p0, Ll1/m;->a:Ln1/h;

    invoke-virtual {p0, p1, p2}, Ln1/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Ll1/m;->a:Ln1/h;

    invoke-virtual {p0}, Ljava/util/AbstractMap;->hashCode()I

    move-result p0

    return p0
.end method

.method public i()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ll1/j;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Ll1/m;->a:Ln1/h;

    invoke-virtual {p0}, Ln1/h;->entrySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
