.class public final synthetic Lcom/nothing/launcher/popup/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/popup/SystemShortcut$Factory;


# static fields
.field public static final synthetic g:Lcom/nothing/launcher/popup/k;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nothing/launcher/popup/k;

    invoke-direct {v0}, Lcom/nothing/launcher/popup/k;-><init>()V

    sput-object v0, Lcom/nothing/launcher/popup/k;->g:Lcom/nothing/launcher/popup/k;

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

    check-cast p1, Lq2/m;

    invoke-static {p1, p2, p3}, Lcom/nothing/launcher/popup/l;->p(Lq2/m;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;

    move-result-object p0

    return-object p0
.end method
