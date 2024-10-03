.class public final synthetic Lcom/nothing/launcher/popup/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/popup/SystemShortcut$Factory;


# static fields
.field public static final synthetic g:Lcom/nothing/launcher/popup/i;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nothing/launcher/popup/i;

    invoke-direct {v0}, Lcom/nothing/launcher/popup/i;-><init>()V

    sput-object v0, Lcom/nothing/launcher/popup/i;->g:Lcom/nothing/launcher/popup/i;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getShortcut(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;
    .locals 0

    check-cast p1, Lcom/android/launcher3/Launcher;

    invoke-static {p1, p2, p3}, Lcom/nothing/launcher/popup/l;->o(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;

    move-result-object p0

    return-object p0
.end method
