.class public final Lh6/h$a;
.super Lo5/a;
.source "SourceFile"

# interfaces
.implements Lh6/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh6/h;-><init>(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo5/a<",
        "Lh6/e;",
        ">;",
        "Lh6/f;"
    }
.end annotation


# instance fields
.field final synthetic g:Lh6/h;


# direct methods
.method constructor <init>(Lh6/h;)V
    .locals 0

    iput-object p1, p0, Lh6/h$a;->g:Lh6/h;

    invoke-direct {p0}, Lo5/a;-><init>()V

    return-void
.end method


# virtual methods
.method public b()I
    .locals 0

    iget-object p0, p0, Lh6/h$a;->g:Lh6/h;

    invoke-static {p0}, Lh6/h;->a(Lh6/h;)Ljava/util/regex/MatchResult;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/regex/MatchResult;->groupCount()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public bridge c(Lh6/e;)Z
    .locals 0

    invoke-super {p0, p1}, Lo5/a;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lh6/e;

    :goto_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lh6/e;

    invoke-virtual {p0, p1}, Lh6/h$a;->c(Lh6/e;)Z

    move-result p0

    return p0
.end method

.method public d(I)Lh6/e;
    .locals 2

    iget-object v0, p0, Lh6/h$a;->g:Lh6/h;

    invoke-static {v0}, Lh6/h;->a(Lh6/h;)Ljava/util/regex/MatchResult;

    move-result-object v0

    invoke-static {v0, p1}, Lh6/j;->b(Ljava/util/regex/MatchResult;I)Le6/d;

    move-result-object v0

    invoke-virtual {v0}, Le6/d;->i()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_0

    new-instance v1, Lh6/e;

    iget-object p0, p0, Lh6/h$a;->g:Lh6/h;

    invoke-static {p0}, Lh6/h;->a(Lh6/h;)Ljava/util/regex/MatchResult;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "matchResult.group(index)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p0, v0}, Lh6/e;-><init>(Ljava/lang/String;Le6/d;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public isEmpty()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lh6/e;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lo5/j;->f(Ljava/util/Collection;)Le6/d;

    move-result-object v0

    invoke-static {v0}, Lo5/j;->A(Ljava/lang/Iterable;)Lg6/g;

    move-result-object v0

    new-instance v1, Lh6/h$a$a;

    invoke-direct {v1, p0}, Lh6/h$a$a;-><init>(Lh6/h$a;)V

    invoke-static {v0, v1}, Lg6/j;->o(Lg6/g;Ly5/l;)Lg6/g;

    move-result-object p0

    invoke-interface {p0}, Lg6/g;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method
