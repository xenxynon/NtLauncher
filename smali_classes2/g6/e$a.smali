.class public final Lg6/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lz5/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg6/e;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;",
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

.field private h:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TE;>;"
        }
    .end annotation
.end field

.field final synthetic i:Lg6/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg6/e<",
            "TT;TR;TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lg6/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg6/e<",
            "TT;TR;TE;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lg6/e$a;->i:Lg6/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lg6/e;->c(Lg6/e;)Lg6/g;

    move-result-object p1

    invoke-interface {p1}, Lg6/g;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lg6/e$a;->g:Ljava/util/Iterator;

    return-void
.end method

.method private final b()Z
    .locals 5

    iget-object v0, p0, Lg6/e$a;->h:Ljava/util/Iterator;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lg6/e$a;->h:Ljava/util/Iterator;

    :cond_1
    iget-object v0, p0, Lg6/e$a;->h:Ljava/util/Iterator;

    if-nez v0, :cond_3

    iget-object v0, p0, Lg6/e$a;->g:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    :cond_2
    iget-object v0, p0, Lg6/e$a;->g:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v3, p0, Lg6/e$a;->i:Lg6/e;

    invoke-static {v3}, Lg6/e;->b(Lg6/e;)Ly5/l;

    move-result-object v3

    iget-object v4, p0, Lg6/e$a;->i:Lg6/e;

    invoke-static {v4}, Lg6/e;->d(Lg6/e;)Ly5/l;

    move-result-object v4

    invoke-interface {v4, v0}, Ly5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0}, Ly5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    iput-object v0, p0, Lg6/e$a;->h:Ljava/util/Iterator;

    :cond_3
    return v1
.end method


# virtual methods
.method public hasNext()Z
    .locals 0

    invoke-direct {p0}, Lg6/e$a;->b()Z

    move-result p0

    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-direct {p0}, Lg6/e$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lg6/e$a;->h:Ljava/util/Iterator;

    invoke-static {p0}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
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
