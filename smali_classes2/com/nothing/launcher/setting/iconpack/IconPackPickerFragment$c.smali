.class final Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$c;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/o;",
        "Ly5/a<",
        "Landroidx/lifecycle/ViewModelProvider$Factory;",
        ">;"
    }
.end annotation


# static fields
.field public static final g:Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$c;

    invoke-direct {v0}, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$c;-><init>()V

    sput-object v0, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$c;->g:Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$c;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/lifecycle/ViewModelProvider$Factory;
    .locals 0

    sget-object p0, Ls4/b;->d:Ls4/b$c;

    invoke-virtual {p0}, Ls4/b$c;->a()Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$c;->invoke()Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object p0

    return-object p0
.end method
