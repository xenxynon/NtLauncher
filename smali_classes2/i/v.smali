.class public final synthetic Li/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Landroid/content/pm/LauncherApps$PinItemRequest;


# direct methods
.method public synthetic constructor <init>(Landroid/content/pm/LauncherApps$PinItemRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li/v;->a:Landroid/content/pm/LauncherApps$PinItemRequest;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Li/v;->a:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-static {p0}, Lcom/android/launcher3/dragndrop/PinShortcutRequestActivityInfo;->a(Landroid/content/pm/LauncherApps$PinItemRequest;)Landroid/content/pm/LauncherApps$PinItemRequest;

    move-result-object p0

    return-object p0
.end method
