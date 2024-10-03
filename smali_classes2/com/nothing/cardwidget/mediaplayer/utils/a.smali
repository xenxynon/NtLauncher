.class public final synthetic Lcom/nothing/cardwidget/mediaplayer/utils/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;


# static fields
.field public static final synthetic a:Lcom/nothing/cardwidget/mediaplayer/utils/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nothing/cardwidget/mediaplayer/utils/a;

    invoke-direct {v0}, Lcom/nothing/cardwidget/mediaplayer/utils/a;-><init>()V

    sput-object v0, Lcom/nothing/cardwidget/mediaplayer/utils/a;->a:Lcom/nothing/cardwidget/mediaplayer/utils/a;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onHeaderDecoded(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/nothing/cardwidget/mediaplayer/utils/BitmapUtil;->a(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V

    return-void
.end method
