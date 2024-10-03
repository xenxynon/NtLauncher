.class final Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$g$a$a$b;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$g$a$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/o;",
        "Ly5/l<",
        "Lt4/e;",
        "Ln5/t;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic g:Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment;

.field final synthetic h:Landroid/view/ContextThemeWrapper;

.field final synthetic i:Lcom/nothing/launcher/setting/screenlayout/a;


# direct methods
.method constructor <init>(Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment;Landroid/view/ContextThemeWrapper;Lcom/nothing/launcher/setting/screenlayout/a;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$g$a$a$b;->g:Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment;

    iput-object p2, p0, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$g$a$a$b;->h:Landroid/view/ContextThemeWrapper;

    iput-object p3, p0, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$g$a$a$b;->i:Lcom/nothing/launcher/setting/screenlayout/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lt4/e;)V
    .locals 4

    const-string v0, "previewIdp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$g$a$a$b;->g:Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment;->r(Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment;J)V

    new-instance v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;

    iget-object v1, p0, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$g$a$a$b;->h:Landroid/view/ContextThemeWrapper;

    invoke-virtual {p1}, Lt4/e;->b()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;-><init>(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;)V

    iget-object v1, p0, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$g$a$a$b;->i:Lcom/nothing/launcher/setting/screenlayout/a;

    iget-object v2, p0, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$g$a$a$b;->g:Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "requireContext()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0, p1}, Ln4/d;->j(Landroid/content/Context;Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;Lt4/e;)V

    iget-object p0, p0, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$g$a$a$b;->g:Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment;

    invoke-static {p0}, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment;->o(Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment;)Lcom/android/launcher3/util/RunnableList;

    move-result-object p0

    new-instance p1, Lcom/android/launcher3/graphics/p;

    invoke-direct {p1, v0}, Lcom/android/launcher3/graphics/p;-><init>(Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lt4/e;

    invoke-virtual {p0, p1}, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$g$a$a$b;->a(Lt4/e;)V

    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method
