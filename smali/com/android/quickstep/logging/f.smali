.class public final synthetic Lcom/android/quickstep/logging/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic a:Lcom/android/quickstep/logging/f;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/quickstep/logging/f;

    invoke-direct {v0}, Lcom/android/quickstep/logging/f;-><init>()V

    sput-object v0, Lcom/android/quickstep/logging/f;->a:Lcom/android/quickstep/logging/f;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/launcher3/util/NavigationMode;

    invoke-static {p1}, Lcom/android/quickstep/logging/SettingsChangeLogger;->a(Lcom/android/launcher3/util/NavigationMode;)Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    move-result-object p0

    return-object p0
.end method
