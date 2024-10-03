.class Lj5/d$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj5/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private g:I

.field private h:I

.field private i:[Lj5/d$j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lj5/d$j<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private j:Lj5/d$j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj5/d$j<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private k:Lj5/d$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj5/d$g<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private l:Lj5/d$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj5/d$g<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic m:Lj5/d;


# direct methods
.method public constructor <init>(Lj5/d;)V
    .locals 0

    iput-object p1, p0, Lj5/d$h;->m:Lj5/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lj5/d$h;->c()V

    return-void
.end method

.method private a()V
    .locals 1

    :goto_0
    iget-object v0, p0, Lj5/d$h;->k:Lj5/d$g;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lj5/d$h;->b()V

    iget-object v0, p0, Lj5/d$h;->j:Lj5/d$j;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lj5/d$j;->get()Lj5/d$g;

    move-result-object v0

    iput-object v0, p0, Lj5/d$h;->k:Lj5/d$g;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Lj5/d$h;->j:Lj5/d$j;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lj5/d$j;->a()Lj5/d$j;

    move-result-object v0

    iput-object v0, p0, Lj5/d$h;->j:Lj5/d$j;

    :cond_0
    :goto_0
    iget-object v0, p0, Lj5/d$h;->j:Lj5/d$j;

    if-nez v0, :cond_2

    iget-object v0, p0, Lj5/d$h;->i:[Lj5/d$j;

    if-eqz v0, :cond_2

    iget v1, p0, Lj5/d$h;->h:I

    array-length v2, v0

    if-lt v1, v2, :cond_1

    invoke-direct {p0}, Lj5/d$h;->c()V

    const/4 v0, 0x0

    iput v0, p0, Lj5/d$h;->h:I

    goto :goto_0

    :cond_1
    aget-object v0, v0, v1

    iput-object v0, p0, Lj5/d$h;->j:Lj5/d$j;

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lj5/d$h;->h:I

    goto :goto_0

    :cond_2
    return-void
.end method

.method private c()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lj5/d$h;->j:Lj5/d$j;

    iput-object v0, p0, Lj5/d$h;->i:[Lj5/d$j;

    iget v0, p0, Lj5/d$h;->g:I

    iget-object v1, p0, Lj5/d$h;->m:Lj5/d;

    invoke-static {v1}, Lj5/d;->c(Lj5/d;)[Lj5/d$n;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lj5/d$h;->m:Lj5/d;

    invoke-static {v0}, Lj5/d;->c(Lj5/d;)[Lj5/d$n;

    move-result-object v0

    iget v1, p0, Lj5/d$h;->g:I

    aget-object v0, v0, v1

    invoke-static {v0}, Lj5/d$n;->c(Lj5/d$n;)[Lj5/d$j;

    move-result-object v0

    iput-object v0, p0, Lj5/d$h;->i:[Lj5/d$j;

    iget v0, p0, Lj5/d$h;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lj5/d$h;->g:I

    :cond_0
    return-void
.end method


# virtual methods
.method public d()Lj5/d$g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj5/d$g<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-direct {p0}, Lj5/d$h;->a()V

    iget-object v0, p0, Lj5/d$h;->k:Lj5/d$g;

    if-eqz v0, :cond_0

    iput-object v0, p0, Lj5/d$h;->l:Lj5/d$g;

    const/4 v1, 0x0

    iput-object v1, p0, Lj5/d$h;->k:Lj5/d$g;

    return-object v0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public hasNext()Z
    .locals 0

    invoke-direct {p0}, Lj5/d$h;->a()V

    iget-object p0, p0, Lj5/d$h;->k:Lj5/d$g;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lj5/d$h;->d()Lj5/d$g;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, Lj5/d$h;->l:Lj5/d$g;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lj5/a;->c(Z)V

    iget-object v0, p0, Lj5/d$h;->m:Lj5/d;

    iget-object p0, p0, Lj5/d$h;->l:Lj5/d$g;

    invoke-virtual {p0}, Lj5/d$g;->getKey()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Lj5/d;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
