.class public final synthetic Landroidx/core/content/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/util/Predicate;


# static fields
.field public static final synthetic a:Landroidx/core/content/d;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/core/content/d;

    invoke-direct {v0}, Landroidx/core/content/d;-><init>()V

    sput-object v0, Landroidx/core/content/d;->a:Landroidx/core/content/d;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Landroid/content/ComponentName;

    invoke-static {p1}, Landroidx/core/content/IntentSanitizer$Builder;->o(Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method
