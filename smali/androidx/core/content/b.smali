.class public final synthetic Landroidx/core/content/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/util/Consumer;


# static fields
.field public static final synthetic g:Landroidx/core/content/b;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/core/content/b;

    invoke-direct {v0}, Landroidx/core/content/b;-><init>()V

    sput-object v0, Landroidx/core/content/b;->g:Landroidx/core/content/b;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroidx/core/content/IntentSanitizer;->b(Ljava/lang/String;)V

    return-void
.end method
