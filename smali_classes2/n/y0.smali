.class public final synthetic Ln/y0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$OnUpdateCallback;


# static fields
.field public static final synthetic a:Ln/y0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Ln/y0;

    invoke-direct {v0}, Ln/y0;-><init>()V

    sput-object v0, Ln/y0;->a:Ln/y0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPackageIconsUpdated(Ljava/util/HashSet;Landroid/os/UserHandle;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/android/launcher3/model/LoaderTask;->c(Ljava/util/HashSet;Landroid/os/UserHandle;)V

    return-void
.end method
