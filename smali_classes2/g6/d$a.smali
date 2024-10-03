.class public final Lg6/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lz5/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg6/d;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;",
        "Lz5/a;"
    }
.end annotation


# instance fields
.field private final g:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation
.end field

.field private h:I

.field private i:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic j:Lg6/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg6/d<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lg6/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg6/d<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lg6/d$a;->j:Lg6/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lg6/d;->d(Lg6/d;)Lg6/g;

    move-result-object p1

    invoke-interface {p1}, Lg6/g;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lg6/d$a;->g:Ljava/util/Iterator;

    const/4 p1, -0x1

    iput p1, p0, Lg6/d$a;->h:I

    return-void
.end method

.method private final b()V
    .locals 3

    :cond_0
    iget-object v0, p0, Lg6/d$a;->g:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg6/d$a;->g:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lg6/d$a;->j:Lg6/d;

    invoke-static {v1}, Lg6/d;->b(Lg6/d;)Ly5/l;

    move-result-object v1

    invoke-interface {v1, v0}, Ly5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lg6/d$a;->j:Lg6/d;

    invoke-static {v2}, Lg6/d;->c(Lg6/d;)Z

    move-result v2

    if-ne v1, v2, :cond_0

    iput-object v0, p0, Lg6/d$a;->i:Ljava/lang/Object;

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lg6/d$a;->h:I

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget v0, p0, Lg6/d$a;->h:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lg6/d$a;->b()V

    :cond_0
    iget p0, p0, Lg6/d$a;->h:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget v0, p0, Lg6/d$a;->h:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lg6/d$a;->b()V

    :cond_0
    iget v0, p0, Lg6/d$a;->h:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg6/d$a;->i:Ljava/lang/Object;

    const/4 v2, 0x0

    iput-object v2, p0, Lg6/d$a;->i:Ljava/lang/Object;

    iput v1, p0, Lg6/d$a;->h:I

    return-object v0

    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public remove()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
