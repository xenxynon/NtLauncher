.class public final synthetic Lcom/nothing/launcher/setting/hiddenapps/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;

.field public final synthetic h:[Lcom/android/launcher3/model/data/AppInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;[Lcom/android/launcher3/model/data/AppInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nothing/launcher/setting/hiddenapps/a;->g:Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;

    iput-object p2, p0, Lcom/nothing/launcher/setting/hiddenapps/a;->h:[Lcom/android/launcher3/model/data/AppInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/nothing/launcher/setting/hiddenapps/a;->g:Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;

    iget-object p0, p0, Lcom/nothing/launcher/setting/hiddenapps/a;->h:[Lcom/android/launcher3/model/data/AppInfo;

    invoke-static {v0, p0}, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment$d$a$a;->a(Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;[Lcom/android/launcher3/model/data/AppInfo;)V

    return-void
.end method
