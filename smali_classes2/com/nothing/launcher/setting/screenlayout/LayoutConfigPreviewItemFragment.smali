.class public final Lcom/nothing/launcher/setting/screenlayout/LayoutConfigPreviewItemFragment;
.super Lcom/nothing/launcher/setting/PreviewItemFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nothing/launcher/setting/screenlayout/LayoutConfigPreviewItemFragment$a;
    }
.end annotation


# static fields
.field public static final k:Lcom/nothing/launcher/setting/screenlayout/LayoutConfigPreviewItemFragment$a;


# instance fields
.field private final j:Ln5/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/nothing/launcher/setting/screenlayout/LayoutConfigPreviewItemFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nothing/launcher/setting/screenlayout/LayoutConfigPreviewItemFragment$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lcom/nothing/launcher/setting/screenlayout/LayoutConfigPreviewItemFragment;->k:Lcom/nothing/launcher/setting/screenlayout/LayoutConfigPreviewItemFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lcom/nothing/launcher/setting/PreviewItemFragment;-><init>()V

    sget-object v0, Lcom/nothing/launcher/setting/screenlayout/LayoutConfigPreviewItemFragment$b;->g:Lcom/nothing/launcher/setting/screenlayout/LayoutConfigPreviewItemFragment$b;

    const-class v1, Lcom/nothing/launcher/setting/screenlayout/a;

    invoke-static {v1}, Lkotlin/jvm/internal/b0;->b(Ljava/lang/Class;)Lf6/c;

    move-result-object v1

    new-instance v2, Lcom/nothing/launcher/setting/screenlayout/LayoutConfigPreviewItemFragment$c;

    invoke-direct {v2, p0}, Lcom/nothing/launcher/setting/screenlayout/LayoutConfigPreviewItemFragment$c;-><init>(Landroidx/fragment/app/Fragment;)V

    new-instance v3, Lcom/nothing/launcher/setting/screenlayout/LayoutConfigPreviewItemFragment$d;

    const/4 v4, 0x0

    invoke-direct {v3, v4, p0}, Lcom/nothing/launcher/setting/screenlayout/LayoutConfigPreviewItemFragment$d;-><init>(Ly5/a;Landroidx/fragment/app/Fragment;)V

    if-nez v0, :cond_0

    new-instance v0, Lcom/nothing/launcher/setting/screenlayout/LayoutConfigPreviewItemFragment$e;

    invoke-direct {v0, p0}, Lcom/nothing/launcher/setting/screenlayout/LayoutConfigPreviewItemFragment$e;-><init>(Landroidx/fragment/app/Fragment;)V

    :cond_0
    invoke-static {p0, v1, v2, v3, v0}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lf6/c;Ly5/a;Ly5/a;Ly5/a;)Ln5/e;

    move-result-object v0

    iput-object v0, p0, Lcom/nothing/launcher/setting/screenlayout/LayoutConfigPreviewItemFragment;->j:Ln5/e;

    return-void
.end method


# virtual methods
.method public bridge synthetic j()Ln4/d;
    .locals 0

    invoke-virtual {p0}, Lcom/nothing/launcher/setting/screenlayout/LayoutConfigPreviewItemFragment;->l()Lcom/nothing/launcher/setting/screenlayout/a;

    move-result-object p0

    return-object p0
.end method

.method public l()Lcom/nothing/launcher/setting/screenlayout/a;
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/setting/screenlayout/LayoutConfigPreviewItemFragment;->j:Ln5/e;

    invoke-interface {p0}, Ln5/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/nothing/launcher/setting/screenlayout/a;

    return-object p0
.end method
