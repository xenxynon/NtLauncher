.class public final Lh6/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lz5/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh6/d;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Le6/d;",
        ">;",
        "Lz5/a;"
    }
.end annotation


# instance fields
.field private g:I

.field private h:I

.field private i:I

.field private j:Le6/d;

.field private k:I

.field final synthetic l:Lh6/d;


# direct methods
.method constructor <init>(Lh6/d;)V
    .locals 2

    iput-object p1, p0, Lh6/d$a;->l:Lh6/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lh6/d$a;->g:I

    invoke-static {p1}, Lh6/d;->e(Lh6/d;)I

    move-result v0

    invoke-static {p1}, Lh6/d;->c(Lh6/d;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Le6/e;->g(III)I

    move-result p1

    iput p1, p0, Lh6/d$a;->h:I

    iput p1, p0, Lh6/d$a;->i:I

    return-void
.end method

.method private final b()V
    .locals 6

    iget v0, p0, Lh6/d$a;->i:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    iput v1, p0, Lh6/d$a;->g:I

    const/4 v0, 0x0

    iput-object v0, p0, Lh6/d$a;->j:Le6/d;

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lh6/d$a;->l:Lh6/d;

    invoke-static {v0}, Lh6/d;->d(Lh6/d;)I

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-lez v0, :cond_1

    iget v0, p0, Lh6/d$a;->k:I

    add-int/2addr v0, v3

    iput v0, p0, Lh6/d$a;->k:I

    iget-object v4, p0, Lh6/d$a;->l:Lh6/d;

    invoke-static {v4}, Lh6/d;->d(Lh6/d;)I

    move-result v4

    if-ge v0, v4, :cond_2

    :cond_1
    iget v0, p0, Lh6/d$a;->i:I

    iget-object v4, p0, Lh6/d$a;->l:Lh6/d;

    invoke-static {v4}, Lh6/d;->c(Lh6/d;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-le v0, v4, :cond_3

    :cond_2
    new-instance v0, Le6/d;

    iget v1, p0, Lh6/d$a;->h:I

    iget-object v4, p0, Lh6/d$a;->l:Lh6/d;

    invoke-static {v4}, Lh6/d;->c(Lh6/d;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Lh6/v;->E(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-direct {v0, v1, v4}, Le6/d;-><init>(II)V

    :goto_0
    iput-object v0, p0, Lh6/d$a;->j:Le6/d;

    :goto_1
    iput v2, p0, Lh6/d$a;->i:I

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lh6/d$a;->l:Lh6/d;

    invoke-static {v0}, Lh6/d;->b(Lh6/d;)Ly5/p;

    move-result-object v0

    iget-object v4, p0, Lh6/d$a;->l:Lh6/d;

    invoke-static {v4}, Lh6/d;->c(Lh6/d;)Ljava/lang/CharSequence;

    move-result-object v4

    iget v5, p0, Lh6/d$a;->i:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ly5/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln5/k;

    if-nez v0, :cond_4

    new-instance v0, Le6/d;

    iget v1, p0, Lh6/d$a;->h:I

    iget-object v4, p0, Lh6/d$a;->l:Lh6/d;

    invoke-static {v4}, Lh6/d;->c(Lh6/d;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Lh6/v;->E(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-direct {v0, v1, v4}, Le6/d;-><init>(II)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ln5/k;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v0}, Ln5/k;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget v4, p0, Lh6/d$a;->h:I

    invoke-static {v4, v2}, Le6/e;->i(II)Le6/d;

    move-result-object v4

    iput-object v4, p0, Lh6/d$a;->j:Le6/d;

    add-int/2addr v2, v0

    iput v2, p0, Lh6/d$a;->h:I

    if-nez v0, :cond_5

    move v1, v3

    :cond_5
    add-int/2addr v2, v1

    goto :goto_1

    :goto_2
    iput v3, p0, Lh6/d$a;->g:I

    :goto_3
    return-void
.end method


# virtual methods
.method public c()Le6/d;
    .locals 3

    iget v0, p0, Lh6/d$a;->g:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lh6/d$a;->b()V

    :cond_0
    iget v0, p0, Lh6/d$a;->g:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lh6/d$a;->j:Le6/d;

    const-string v2, "null cannot be cast to non-null type kotlin.ranges.IntRange"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lh6/d$a;->j:Le6/d;

    iput v1, p0, Lh6/d$a;->g:I

    return-object v0

    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public hasNext()Z
    .locals 2

    iget v0, p0, Lh6/d$a;->g:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lh6/d$a;->b()V

    :cond_0
    iget p0, p0, Lh6/d$a;->g:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lh6/d$a;->c()Le6/d;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
