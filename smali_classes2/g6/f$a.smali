.class public final Lg6/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lz5/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg6/f;->iterator()Ljava/util/Iterator;
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
.field private g:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private h:I

.field final synthetic i:Lg6/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg6/f<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lg6/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg6/f<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lg6/f$a;->i:Lg6/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x2

    iput p1, p0, Lg6/f$a;->h:I

    return-void
.end method

.method private final b()V
    .locals 2

    iget v0, p0, Lg6/f$a;->h:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lg6/f$a;->i:Lg6/f;

    invoke-static {v0}, Lg6/f;->b(Lg6/f;)Ly5/a;

    move-result-object v0

    invoke-interface {v0}, Ly5/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lg6/f$a;->i:Lg6/f;

    invoke-static {v0}, Lg6/f;->c(Lg6/f;)Ly5/l;

    move-result-object v0

    iget-object v1, p0, Lg6/f$a;->g:Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ly5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lg6/f$a;->g:Ljava/lang/Object;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    :goto_1
    iput v0, p0, Lg6/f$a;->h:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget v0, p0, Lg6/f$a;->h:I

    if-gez v0, :cond_0

    invoke-direct {p0}, Lg6/f$a;->b()V

    :cond_0
    iget p0, p0, Lg6/f$a;->h:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget v0, p0, Lg6/f$a;->h:I

    if-gez v0, :cond_0

    invoke-direct {p0}, Lg6/f$a;->b()V

    :cond_0
    iget v0, p0, Lg6/f$a;->h:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg6/f$a;->g:Ljava/lang/Object;

    const-string v1, "null cannot be cast to non-null type T of kotlin.sequences.GeneratorSequence"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, -0x1

    iput v1, p0, Lg6/f$a;->h:I

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
