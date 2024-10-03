.class public final synthetic Lq2/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/SettingsCache$OnChangeListener;


# static fields
.field public static final synthetic g:Lq2/n;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lq2/n;

    invoke-direct {v0}, Lq2/n;-><init>()V

    sput-object v0, Lq2/n;->g:Lq2/n;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSettingsChanged(Z)V
    .locals 0

    invoke-static {p1}, Lcom/nothing/launcher/NTLauncherApplication$a;->a(Z)V

    return-void
.end method
