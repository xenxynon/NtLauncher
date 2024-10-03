.class public final Lcom/nothing/launcher/setting/iconpack/IconPackPreviewItemFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nothing/launcher/setting/iconpack/IconPackPreviewItemFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/i;)V
    .locals 0

    invoke-direct {p0}, Lcom/nothing/launcher/setting/iconpack/IconPackPreviewItemFragment$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/nothing/launcher/setting/iconpack/IconPackPreviewItemFragment;
    .locals 2

    new-instance p0, Lcom/nothing/launcher/setting/iconpack/IconPackPreviewItemFragment;

    invoke-direct {p0}, Lcom/nothing/launcher/setting/iconpack/IconPackPreviewItemFragment;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "adapter_item_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method
