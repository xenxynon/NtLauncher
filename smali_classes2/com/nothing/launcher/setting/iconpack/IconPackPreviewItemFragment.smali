.class public final Lcom/nothing/launcher/setting/iconpack/IconPackPreviewItemFragment;
.super Lcom/nothing/launcher/setting/PreviewItemFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nothing/launcher/setting/iconpack/IconPackPreviewItemFragment$a;
    }
.end annotation


# static fields
.field public static final k:Lcom/nothing/launcher/setting/iconpack/IconPackPreviewItemFragment$a;


# instance fields
.field private final j:Ln5/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/nothing/launcher/setting/iconpack/IconPackPreviewItemFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nothing/launcher/setting/iconpack/IconPackPreviewItemFragment$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lcom/nothing/launcher/setting/iconpack/IconPackPreviewItemFragment;->k:Lcom/nothing/launcher/setting/iconpack/IconPackPreviewItemFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/nothing/launcher/setting/PreviewItemFragment;-><init>()V

    const-class v0, Ls4/a;

    invoke-static {v0}, Lkotlin/jvm/internal/b0;->b(Ljava/lang/Class;)Lf6/c;

    move-result-object v0

    new-instance v1, Lcom/nothing/launcher/setting/iconpack/IconPackPreviewItemFragment$b;

    invoke-direct {v1, p0}, Lcom/nothing/launcher/setting/iconpack/IconPackPreviewItemFragment$b;-><init>(Landroidx/fragment/app/Fragment;)V

    new-instance v2, Lcom/nothing/launcher/setting/iconpack/IconPackPreviewItemFragment$c;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p0}, Lcom/nothing/launcher/setting/iconpack/IconPackPreviewItemFragment$c;-><init>(Ly5/a;Landroidx/fragment/app/Fragment;)V

    new-instance v3, Lcom/nothing/launcher/setting/iconpack/IconPackPreviewItemFragment$d;

    invoke-direct {v3, p0}, Lcom/nothing/launcher/setting/iconpack/IconPackPreviewItemFragment$d;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-static {p0, v0, v1, v2, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lf6/c;Ly5/a;Ly5/a;Ly5/a;)Ln5/e;

    move-result-object v0

    iput-object v0, p0, Lcom/nothing/launcher/setting/iconpack/IconPackPreviewItemFragment;->j:Ln5/e;

    return-void
.end method


# virtual methods
.method public bridge synthetic j()Ln4/d;
    .locals 0

    invoke-virtual {p0}, Lcom/nothing/launcher/setting/iconpack/IconPackPreviewItemFragment;->l()Ls4/a;

    move-result-object p0

    return-object p0
.end method

.method public l()Ls4/a;
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/setting/iconpack/IconPackPreviewItemFragment;->j:Ln5/e;

    invoke-interface {p0}, Ln5/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ls4/a;

    return-object p0
.end method
