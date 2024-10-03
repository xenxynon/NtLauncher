.class public final Lcom/nothing/launcher/setting/view/HomeScreenPreview$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nothing/launcher/setting/view/HomeScreenPreview;->e(ILt4/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic g:Landroid/view/View;

.field final synthetic h:Lcom/nothing/launcher/setting/view/HomeScreenPreview;

.field final synthetic i:I

.field final synthetic j:Lt4/g;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/nothing/launcher/setting/view/HomeScreenPreview;ILt4/g;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/launcher/setting/view/HomeScreenPreview$b;->g:Landroid/view/View;

    iput-object p2, p0, Lcom/nothing/launcher/setting/view/HomeScreenPreview$b;->h:Lcom/nothing/launcher/setting/view/HomeScreenPreview;

    iput p3, p0, Lcom/nothing/launcher/setting/view/HomeScreenPreview$b;->i:I

    iput-object p4, p0, Lcom/nothing/launcher/setting/view/HomeScreenPreview$b;->j:Lt4/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/nothing/launcher/setting/view/HomeScreenPreview$b;->h:Lcom/nothing/launcher/setting/view/HomeScreenPreview;

    iget v1, p0, Lcom/nothing/launcher/setting/view/HomeScreenPreview$b;->i:I

    iget-object p0, p0, Lcom/nothing/launcher/setting/view/HomeScreenPreview$b;->j:Lt4/g;

    invoke-static {v0, v1, p0}, Lcom/nothing/launcher/setting/view/HomeScreenPreview;->b(Lcom/nothing/launcher/setting/view/HomeScreenPreview;ILt4/g;)V

    return-void
.end method
