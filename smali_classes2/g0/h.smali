.class public final Lg0/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg0/g;


# instance fields
.field private final g:Landroid/view/View;

.field private final h:Ly5/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly5/l<",
            "Ljava/lang/Integer;",
            "Ln5/t;",
            ">;"
        }
    .end annotation
.end field

.field private i:Z

.field private j:I


# direct methods
.method public constructor <init>(Landroid/view/View;Ly5/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ly5/l<",
            "-",
            "Ljava/lang/Integer;",
            "Ln5/t;",
            ">;)V"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "superSetVisibility"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg0/h;->g:Landroid/view/View;

    iput-object p2, p0, Lg0/h;->h:Ly5/l;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    iput p1, p0, Lg0/h;->j:I

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    iget-boolean v0, p0, Lg0/h;->i:Z

    if-eqz v0, :cond_0

    iput p1, p0, Lg0/h;->j:I

    return-void

    :cond_0
    iget-object p0, p0, Lg0/h;->h:Ly5/l;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ly5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setShouldBlockVisibilityChanges(Z)V
    .locals 2

    iget-boolean v0, p0, Lg0/h;->i:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lg0/h;->i:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lg0/h;->g:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    iput p1, p0, Lg0/h;->j:I

    goto :goto_0

    :cond_1
    iget p1, p0, Lg0/h;->j:I

    const/4 v0, 0x0

    if-nez p1, :cond_2

    iget-object p1, p0, Lg0/h;->h:Ly5/l;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ly5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lg0/h;->h:Ly5/l;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ly5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lg0/h;->h:Ly5/l;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ly5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lg0/h;->h:Ly5/l;

    iget p0, p0, Lg0/h;->j:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ly5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method
