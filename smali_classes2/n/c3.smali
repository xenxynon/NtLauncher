.class public final synthetic Ln/c3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/LauncherModel$CallbackTask;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/model/StringCache;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/StringCache;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln/c3;->a:Lcom/android/launcher3/model/StringCache;

    return-void
.end method


# virtual methods
.method public final execute(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0

    iget-object p0, p0, Ln/c3;->a:Lcom/android/launcher3/model/StringCache;

    invoke-static {p0, p1}, Lcom/android/launcher3/model/ReloadStringCacheTask;->m(Lcom/android/launcher3/model/StringCache;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method
