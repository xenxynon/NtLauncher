.class final Ln1/h$c;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln1/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic g:Ln1/h;


# direct methods
.method constructor <init>(Ln1/h;)V
    .locals 0

    iput-object p1, p0, Ln1/h$c;->g:Ln1/h;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    iget-object p0, p0, Ln1/h$c;->g:Ln1/h;

    invoke-virtual {p0}, Ln1/h;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Ln1/h$c;->g:Ln1/h;

    invoke-virtual {p0, p1}, Ln1/h;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, Ln1/h$c$a;

    invoke-direct {v0, p0}, Ln1/h$c$a;-><init>(Ln1/h$c;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Ln1/h$c;->g:Ln1/h;

    invoke-virtual {p0, p1}, Ln1/h;->h(Ljava/lang/Object;)Ln1/h$e;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Ln1/h$c;->g:Ln1/h;

    iget p0, p0, Ln1/h;->i:I

    return p0
.end method
