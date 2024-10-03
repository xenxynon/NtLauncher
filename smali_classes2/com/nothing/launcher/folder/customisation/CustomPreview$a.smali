.class public final Lcom/nothing/launcher/folder/customisation/CustomPreview$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nothing/launcher/folder/customisation/CustomPreview;->i(Landroid/animation/AnimatorSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic g:Lcom/nothing/launcher/folder/customisation/CustomPreview;

.field final synthetic h:Landroid/animation/AnimatorSet;


# direct methods
.method constructor <init>(Lcom/nothing/launcher/folder/customisation/CustomPreview;Landroid/animation/AnimatorSet;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/launcher/folder/customisation/CustomPreview$a;->g:Lcom/nothing/launcher/folder/customisation/CustomPreview;

    iput-object p2, p0, Lcom/nothing/launcher/folder/customisation/CustomPreview$a;->h:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/nothing/launcher/folder/customisation/CustomPreview$a;->g:Lcom/nothing/launcher/folder/customisation/CustomPreview;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/nothing/launcher/folder/customisation/CustomPreview;->b(Lcom/nothing/launcher/folder/customisation/CustomPreview;Landroid/animation/AnimatorSet;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/nothing/launcher/folder/customisation/CustomPreview$a;->g:Lcom/nothing/launcher/folder/customisation/CustomPreview;

    iget-object p0, p0, Lcom/nothing/launcher/folder/customisation/CustomPreview$a;->h:Landroid/animation/AnimatorSet;

    invoke-static {p1, p0}, Lcom/nothing/launcher/folder/customisation/CustomPreview;->b(Lcom/nothing/launcher/folder/customisation/CustomPreview;Landroid/animation/AnimatorSet;)V

    return-void
.end method
