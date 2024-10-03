.class final La4/g$c;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La4/g;->g(Lcom/android/launcher3/folder/BigFolderIcon;Landroid/graphics/Point;Landroid/graphics/Point;ZLy5/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/o;",
        "Ly5/p<",
        "Landroid/animation/Animator;",
        "Ljava/lang/Boolean;",
        "Ln5/t;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic g:La4/g;

.field final synthetic h:Landroid/animation/AnimatorSet;

.field final synthetic i:Z


# direct methods
.method constructor <init>(La4/g;Landroid/animation/AnimatorSet;Z)V
    .locals 0

    iput-object p1, p0, La4/g$c;->g:La4/g;

    iput-object p2, p0, La4/g$c;->h:Landroid/animation/AnimatorSet;

    iput-boolean p3, p0, La4/g$c;->i:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/animation/Animator;Z)V
    .locals 2

    const-string v0, "a"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, La4/g$c;->g:La4/g;

    iget-object v1, p0, La4/g$c;->h:Landroid/animation/AnimatorSet;

    iget-boolean p0, p0, La4/g$c;->i:Z

    invoke-static {v0, v1, p1, p0, p2}, La4/g;->c(La4/g;Landroid/animation/AnimatorSet;Landroid/animation/Animator;ZZ)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/animation/Animator;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, La4/g$c;->a(Landroid/animation/Animator;Z)V

    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method
