.class public final Lcom/android/launcher3/folder/BaseFolderIcon$animateDotScale$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/BaseFolderIcon;->animateDotScale([F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/BaseFolderIcon;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/BaseFolderIcon;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/folder/BaseFolderIcon$animateDotScale$1$1;->this$0:Lcom/android/launcher3/folder/BaseFolderIcon;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/folder/BaseFolderIcon$animateDotScale$1$1;->this$0:Lcom/android/launcher3/folder/BaseFolderIcon;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/launcher3/folder/BaseFolderIcon;->access$setDotScaleAnim$p(Lcom/android/launcher3/folder/BaseFolderIcon;Landroid/animation/Animator;)V

    return-void
.end method
