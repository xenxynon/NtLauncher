.class final Lcom/android/launcher3/folder/NTFolderAnimationManager$setAnimatorListener$1$1;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/NTFolderAnimationManager;->setAnimatorListener(Landroid/animation/AnimatorSet;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/o;",
        "Ly5/l<",
        "Landroid/view/View;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $cellLayout:Lcom/android/launcher3/CellLayout;


# direct methods
.method constructor <init>(Lcom/android/launcher3/CellLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager$setAnimatorListener$1$1;->$cellLayout:Lcom/android/launcher3/CellLayout;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroid/view/View;)Ljava/lang/Boolean;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager$setAnimatorListener$1$1;->$cellLayout:Lcom/android/launcher3/CellLayout;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/NTFolderAnimationManager$setAnimatorListener$1$1;->invoke(Landroid/view/View;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
