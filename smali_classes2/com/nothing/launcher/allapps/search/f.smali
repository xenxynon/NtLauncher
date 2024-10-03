.class public final synthetic Lcom/nothing/launcher/allapps/search/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:[Lcom/android/launcher3/model/data/AppInfo;


# direct methods
.method public synthetic constructor <init>([Lcom/android/launcher3/model/data/AppInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nothing/launcher/allapps/search/f;->a:[Lcom/android/launcher3/model/data/AppInfo;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/allapps/search/f;->a:[Lcom/android/launcher3/model/data/AppInfo;

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {p0, p1}, Lcom/nothing/launcher/allapps/search/NTLauncherAllAppsContainerView$b$a$a;->a([Lcom/android/launcher3/model/data/AppInfo;Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    return p0
.end method
