.class public final synthetic Lcom/android/launcher3/model/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/LauncherModel$CallbackTask;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/n;->a:Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;

    return-void
.end method


# virtual methods
.method public final execute(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/model/n;->a:Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;

    invoke-static {p0, p1}, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->g(Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method
