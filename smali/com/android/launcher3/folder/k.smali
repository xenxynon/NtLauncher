.class public final synthetic Lcom/android/launcher3/folder/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/folder/Folder;

.field public final synthetic h:Landroid/animation/AnimatorSet;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/folder/Folder;Landroid/animation/AnimatorSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/k;->g:Lcom/android/launcher3/folder/Folder;

    iput-object p2, p0, Lcom/android/launcher3/folder/k;->h:Landroid/animation/AnimatorSet;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/k;->g:Lcom/android/launcher3/folder/Folder;

    iget-object p0, p0, Lcom/android/launcher3/folder/k;->h:Landroid/animation/AnimatorSet;

    check-cast p1, Landroid/view/View;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/folder/Folder;->b(Lcom/android/launcher3/folder/Folder;Landroid/animation/AnimatorSet;Landroid/view/View;)V

    return-void
.end method
