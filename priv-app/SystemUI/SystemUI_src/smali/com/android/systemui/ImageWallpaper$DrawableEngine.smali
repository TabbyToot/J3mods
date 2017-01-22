.class Lcom/android/systemui/ImageWallpaper$DrawableEngine;
.super Landroid/service/wallpaper/WallpaperService$Engine;
.source "ImageWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/ImageWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DrawableEngine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/ImageWallpaper$DrawableEngine$WallpaperObserver;
    }
.end annotation


# static fields
.field static final EGL_CONTEXT_CLIENT_VERSION:I = 0x3098

.field static final EGL_OPENGL_ES2_BIT:I = 0x4

.field private static final EXTRACT_MODE_BOTH:I = 0x1

.field private static final EXTRACT_MODE_PORTRAIT:I = 0x0

.field static final FILTER_PARAM_END_BOTTOM_COLOR_A:I = 0x10

.field static final FILTER_PARAM_END_BOTTOM_COLOR_B:I = 0xf

.field static final FILTER_PARAM_END_BOTTOM_COLOR_G:I = 0xe

.field static final FILTER_PARAM_END_BOTTOM_COLOR_R:I = 0xd

.field static final FILTER_PARAM_END_BOTTOM_POINT_X:I = 0x17

.field static final FILTER_PARAM_END_BOTTOM_POINT_Y:I = 0x18

.field static final FILTER_PARAM_END_TOP_COLOR_A:I = 0x8

.field static final FILTER_PARAM_END_TOP_COLOR_B:I = 0x7

.field static final FILTER_PARAM_END_TOP_COLOR_G:I = 0x6

.field static final FILTER_PARAM_END_TOP_COLOR_R:I = 0x5

.field static final FILTER_PARAM_END_TOP_POINT_X:I = 0x13

.field static final FILTER_PARAM_END_TOP_POINT_Y:I = 0x14

.field static final FILTER_PARAM_START_BOTTOM_COLOR_A:I = 0xc

.field static final FILTER_PARAM_START_BOTTOM_COLOR_B:I = 0xb

.field static final FILTER_PARAM_START_BOTTOM_COLOR_G:I = 0xa

.field static final FILTER_PARAM_START_BOTTOM_COLOR_R:I = 0x9

.field static final FILTER_PARAM_START_BOTTOM_POINT_X:I = 0x15

.field static final FILTER_PARAM_START_BOTTOM_POINT_Y:I = 0x16

.field static final FILTER_PARAM_START_TOP_COLOR_A:I = 0x4

.field static final FILTER_PARAM_START_TOP_COLOR_B:I = 0x3

.field static final FILTER_PARAM_START_TOP_COLOR_G:I = 0x2

.field static final FILTER_PARAM_START_TOP_COLOR_R:I = 0x1

.field static final FILTER_PARAM_START_TOP_POINT_X:I = 0x11

.field static final FILTER_PARAM_START_TOP_POINT_Y:I = 0x12

.field private static final FLOAT_SIZE_BYTES:I = 0x4

.field private static final PREFERENCES_NEED_DARK_FONT:Ljava/lang/String; = "need_dark_font"

.field private static final SETTINGS_SYSTEMUI_TRANSPARENCY:Ljava/lang/String; = "android.wallpaper.settings_systemui_transparency"

.field private static final SETTINGS_WALLPAPER_EXTRACT_COLOR_MODE:Ljava/lang/String; = "wallpaper_extract_color_mode"

.field private static final TRIANGLE_VERTICES_DATA_POS_OFFSET:I = 0x0

.field private static final TRIANGLE_VERTICES_DATA_STRIDE_BYTES:I = 0x14

.field private static final TRIANGLE_VERTICES_DATA_UV_OFFSET:I = 0x3

.field private static final sFilteredFS:Ljava/lang/String; = "precision mediump float;\nuniform float filterParams[25];\nvarying vec2 outTexCoords;\nuniform sampler2D texture;\n\nvoid main(void) {\n    vec4 startColor_top = vec4(filterParams[1], filterParams[2], filterParams[3], filterParams[4]);\n    vec4 endColor_top = vec4(filterParams[5], filterParams[6], filterParams[7], filterParams[8]);\n    vec4 startColor_bottom = vec4(filterParams[9], filterParams[10], filterParams[11], filterParams[12]);\n    vec4 endColor_bottom = vec4(filterParams[13], filterParams[14], filterParams[15], filterParams[16]);\n    vec2 startPoint_top = vec2(filterParams[17], filterParams[18]);\n    vec2 endPoint_top = vec2(filterParams[19], filterParams[20]);\n    vec2 startPoint_bottom = vec2(filterParams[21], filterParams[22]);\n    vec2 endPoint_bottom = vec2(filterParams[23], filterParams[24]);\n    vec2 send_top = endPoint_top - startPoint_top;\n    vec2 scur_top = outTexCoords - startPoint_top;\n    vec2 send_bottom = endPoint_bottom - startPoint_bottom;\n    vec2 scur_bottom = outTexCoords - startPoint_bottom;\n    float proj_top = dot(send_top, scur_top) / dot(send_top, send_top);\n    vec4 mask_top = mix(startColor_top, endColor_top, smoothstep(0.0, 1.0, proj_top));\n    float proj_bottom = dot(send_bottom, scur_bottom) / dot(send_bottom, send_bottom);\n    vec4 mask_bottom = mix(startColor_bottom, endColor_bottom, smoothstep(0.0, 1.0, proj_bottom));\n    mask_top.rgb *= mask_top.a;\n    mask_bottom.rgb *= mask_bottom.a;\n    gl_FragColor = texture2D(texture, outTexCoords);\n    gl_FragColor = mask_top + gl_FragColor * (1.0 - mask_top.a);\n    gl_FragColor = mask_bottom + gl_FragColor * (1.0 - mask_bottom.a);\n}\n\n"

.field private static final sSimpleFS:Ljava/lang/String; = "precision mediump float;\nvarying vec2 outTexCoords;\nuniform sampler2D texture;\n\nvoid main(void) {\n    gl_FragColor = texture2D(texture, outTexCoords);\n}\n\n"

.field private static final sSimpleVS:Ljava/lang/String; = "attribute vec4 position;\nattribute vec2 texCoords;\nvarying vec2 outTexCoords;\nuniform mat4 projection;\n\nvoid main(void) {\n    outTexCoords = texCoords;\n    gl_Position = projection * position;\n}\n\n"


# instance fields
.field mBackground:Landroid/graphics/Bitmap;

.field mBackgroundHeight:I

.field mBackgroundWidth:I

.field mColorHSV:[F

.field private mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field private mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field private mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private mExtractMode:I

.field protected mFilterParams:[F

.field mGetBackgroundHSV:Z

.field mLastRotation:I

.field mLastSurfaceHeight:I

.field mLastSurfaceWidth:I

.field mLastXTranslation:I

.field mLastYTranslation:I

.field mMobileKeyboardHeight:I

.field mMobileKeyboardWidth:I

.field mNeedBlackText:I

.field mOffsetsChanged:Z

.field mOrthoHeight:I

.field mOrthoWidth:I

.field private mReceiver:Lcom/android/systemui/ImageWallpaper$DrawableEngine$WallpaperObserver;

.field mRedrawNeeded:Z

.field mScale:F

.field mVisible:Z

.field mVpHeight:I

.field mVpWidth:I

.field mXOffset:F

.field mYOffset:F

.field final synthetic this$0:Lcom/android/systemui/ImageWallpaper;

.field private wallpaperTiltSettingChanged:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Lcom/android/systemui/ImageWallpaper;)V
    .locals 5

    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v1, 0x1

    const/4 v0, -0x1

    const/4 v2, 0x0

    .line 306
    iput-object p1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    .line 307
    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;-><init>(Landroid/service/wallpaper/WallpaperService;)V

    .line 200
    iput v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundWidth:I

    iput v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundHeight:I

    .line 201
    iput v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceWidth:I

    iput v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceHeight:I

    .line 202
    iput v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastRotation:I

    .line 203
    iput v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mMobileKeyboardWidth:I

    .line 204
    iput v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mMobileKeyboardHeight:I

    .line 205
    iput v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOrthoWidth:I

    .line 206
    iput v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOrthoHeight:I

    .line 207
    iput v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVpWidth:I

    .line 208
    iput v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVpHeight:I

    .line 211
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mColorHSV:[F

    .line 212
    iput v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mNeedBlackText:I

    .line 213
    iput-boolean v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mGetBackgroundHSV:Z

    .line 215
    iput v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mXOffset:F

    .line 216
    iput v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mYOffset:F

    .line 217
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mScale:F

    .line 220
    const/16 v0, 0x19

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mFilterParams:[F

    .line 222
    iput-boolean v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVisible:Z

    .line 1330
    new-instance v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$1;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v3}, Lcom/android/systemui/ImageWallpaper$DrawableEngine$1;-><init>(Lcom/android/systemui/ImageWallpaper$DrawableEngine;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->wallpaperTiltSettingChanged:Landroid/database/ContentObserver;

    .line 310
    invoke-virtual {p1}, Lcom/android/systemui/ImageWallpaper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "android.wallpaper.settings_systemui_transparency"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    # setter for: Lcom/android/systemui/ImageWallpaper;->NEED_CUSTOMIZING:Z
    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$002(Z)Z

    .line 317
    # getter for: Lcom/android/systemui/ImageWallpaper;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    const-string v0, "ImageWallpaper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NEED_CUSTOMIZING:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/android/systemui/ImageWallpaper;->NEED_CUSTOMIZING:Z
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$000()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/ImageWallpaper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "wallpaper_extract_color_mode"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mExtractMode:I

    .line 321
    invoke-virtual {p0, v1}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->setFixedSizeAllowed(Z)V

    .line 322
    return-void

    :cond_1
    move v0, v2

    .line 310
    goto :goto_0
.end method

.method private buildProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .param p1, "vertex"    # Ljava/lang/String;
    .param p2, "fragment"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 1155
    const v6, 0x8b31

    invoke-direct {p0, p1, v6}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->buildShader(Ljava/lang/String;I)I

    move-result v4

    .line 1156
    .local v4, "vertexShader":I
    if-nez v4, :cond_1

    move v2, v5

    .line 1182
    :cond_0
    :goto_0
    return v2

    .line 1158
    :cond_1
    const v6, 0x8b30

    invoke-direct {p0, p2, v6}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->buildShader(Ljava/lang/String;I)I

    move-result v1

    .line 1159
    .local v1, "fragmentShader":I
    if-nez v1, :cond_2

    move v2, v5

    goto :goto_0

    .line 1161
    :cond_2
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    .line 1162
    .local v2, "program":I
    invoke-static {v2, v4}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 1163
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->checkGlError()V

    .line 1165
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 1166
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->checkGlError()V

    .line 1168
    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 1169
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->checkGlError()V

    .line 1171
    new-array v3, v7, [I

    .line 1172
    .local v3, "status":[I
    const v6, 0x8b82

    invoke-static {v2, v6, v3, v5}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 1173
    aget v6, v3, v5

    if-eq v6, v7, :cond_0

    .line 1174
    invoke-static {v2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v0

    .line 1175
    .local v0, "error":Ljava/lang/String;
    const-string v6, "ImageWallpaperGL"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error while linking program:\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    invoke-static {v4}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 1177
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 1178
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    move v2, v5

    .line 1179
    goto :goto_0
.end method

.method private buildShader(Ljava/lang/String;I)I
    .locals 7
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 1186
    invoke-static {p2}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 1188
    .local v1, "shader":I
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 1189
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->checkGlError()V

    .line 1191
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 1192
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->checkGlError()V

    .line 1194
    new-array v2, v5, [I

    .line 1195
    .local v2, "status":[I
    const v4, 0x8b81

    invoke-static {v1, v4, v2, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 1196
    aget v4, v2, v3

    if-eq v4, v5, :cond_0

    .line 1197
    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v0

    .line 1198
    .local v0, "error":Ljava/lang/String;
    const-string v4, "ImageWallpaperGL"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error while compiling shader:\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    move v1, v3

    .line 1203
    .end local v0    # "error":Ljava/lang/String;
    .end local v1    # "shader":I
    :cond_0
    return v1
.end method

.method private checkEglError()V
    .locals 4

    .prologue
    .line 1207
    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 1208
    .local v0, "error":I
    const/16 v1, 0x3000

    if-eq v0, v1, :cond_0

    .line 1209
    const-string v1, "ImageWallpaperGL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EGL error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    :cond_0
    return-void
.end method

.method private checkGlError()V
    .locals 4

    .prologue
    .line 1214
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .line 1215
    .local v0, "error":I
    if-eqz v0, :cond_0

    .line 1216
    const-string v1, "ImageWallpaperGL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GL error = 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1218
    :cond_0
    return-void
.end method

.method private chooseEglConfig()Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 1304
    new-array v5, v4, [I

    .line 1305
    .local v5, "configsCount":[I
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 1306
    .local v3, "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->getConfig()[I

    move-result-object v2

    .line 1307
    .local v2, "configSpec":[I
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1308
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "eglChooseConfig failed "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v4

    invoke-static {v4}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1310
    :cond_0
    aget v0, v5, v6

    if-lez v0, :cond_1

    .line 1311
    aget-object v0, v3, v6

    .line 1313
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createMesh(IIFF)Ljava/nio/FloatBuffer;
    .locals 8
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 1116
    const/16 v3, 0x14

    new-array v2, v3, [F

    int-to-float v3, p1

    aput v3, v2, v7

    const/4 v3, 0x1

    aput p4, v2, v3

    const/4 v3, 0x2

    aput v5, v2, v3

    const/4 v3, 0x3

    aput v5, v2, v3

    const/4 v3, 0x4

    aput v6, v2, v3

    const/4 v3, 0x5

    aput p3, v2, v3

    const/4 v3, 0x6

    aput p4, v2, v3

    const/4 v3, 0x7

    aput v5, v2, v3

    const/16 v3, 0x8

    aput v6, v2, v3

    const/16 v3, 0x9

    aput v6, v2, v3

    const/16 v3, 0xa

    int-to-float v4, p1

    aput v4, v2, v3

    const/16 v3, 0xb

    int-to-float v4, p2

    aput v4, v2, v3

    const/16 v3, 0xc

    aput v5, v2, v3

    const/16 v3, 0xd

    aput v5, v2, v3

    const/16 v3, 0xe

    aput v5, v2, v3

    const/16 v3, 0xf

    aput p3, v2, v3

    const/16 v3, 0x10

    int-to-float v4, p2

    aput v4, v2, v3

    const/16 v3, 0x11

    aput v5, v2, v3

    const/16 v3, 0x12

    aput v6, v2, v3

    const/16 v3, 0x13

    aput v5, v2, v3

    .line 1124
    .local v2, "verticesData":[F
    array-length v3, v2

    mul-int/lit8 v0, v3, 0x4

    .line 1125
    .local v0, "bytes":I
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 1127
    .local v1, "triangleVertices":Ljava/nio/FloatBuffer;
    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 1128
    return-object v1
.end method

.method private drawWallpaperWithCanvas(Landroid/view/SurfaceHolder;IIII)V
    .locals 7
    .param p1, "sh"    # Landroid/view/SurfaceHolder;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "left"    # I
    .param p5, "top"    # I

    .prologue
    .line 897
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 898
    .local v0, "c":Landroid/graphics/Canvas;
    if-eqz v0, :cond_4

    .line 900
    :try_start_0
    # getter for: Lcom/android/systemui/ImageWallpaper;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 901
    const-string v1, "ImageWallpaper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Redrawing: left="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", top="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    :cond_0
    int-to-float v1, p4

    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v5, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mScale:F

    mul-float/2addr v2, v5

    add-float v3, v1, v2

    .line 905
    .local v3, "right":F
    int-to-float v1, p5

    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v5, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mScale:F

    mul-float/2addr v2, v5

    add-float v4, v1, v2

    .line 906
    .local v4, "bottom":F
    if-ltz p2, :cond_1

    if-gez p3, :cond_2

    .line 907
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->save(I)I

    .line 908
    int-to-float v1, p4

    int-to-float v2, p5

    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 910
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 911
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 913
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 914
    new-instance v6, Landroid/graphics/RectF;

    int-to-float v1, p4

    int-to-float v2, p5

    invoke-direct {v6, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 916
    .local v6, "dest":Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v2, v6, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 919
    .end local v6    # "dest":Landroid/graphics/RectF;
    :cond_3
    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 922
    .end local v3    # "right":F
    .end local v4    # "bottom":F
    :cond_4
    return-void

    .line 919
    :catchall_0
    move-exception v1

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    throw v1
.end method

.method private drawWallpaperWithOpenGL(Landroid/view/SurfaceHolder;IIII)Z
    .locals 33
    .param p1, "sh"    # Landroid/view/SurfaceHolder;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "left"    # I
    .param p5, "top"    # I

    .prologue
    .line 925
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->initGL(Landroid/view/SurfaceHolder;)Z

    move-result v7

    if-nez v7, :cond_0

    const/16 v27, 0x0

    .line 1038
    :goto_0
    return v27

    .line 927
    :cond_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    .line 928
    .local v19, "bitmapWidth":I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    .line 930
    .local v18, "bitmapHeight":I
    move/from16 v0, p4

    int-to-float v7, v0

    move/from16 v0, v19

    int-to-float v8, v0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mScale:F

    mul-float/2addr v8, v9

    add-float v26, v7, v8

    .line 931
    .local v26, "right":F
    move/from16 v0, p5

    int-to-float v7, v0

    move/from16 v0, v18

    int-to-float v8, v0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mScale:F

    mul-float/2addr v8, v9

    add-float v20, v7, v8

    .line 933
    .local v20, "bottom":F
    invoke-interface/range {p1 .. p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v22

    .line 934
    .local v22, "frame":Landroid/graphics/Rect;
    new-instance v5, Landroid/renderscript/Matrix4f;

    invoke-direct {v5}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 936
    .local v5, "ortho":Landroid/renderscript/Matrix4f;
    const/16 v31, 0x0

    .line 937
    .local v31, "vp_x":I
    const/16 v32, 0x0

    .line 938
    .local v32, "vp_y":I
    const/16 v23, 0x0

    .line 939
    .local v23, "margin_x":I
    const/16 v24, 0x0

    .line 941
    .local v24, "margin_y":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->isMobileKeyboard()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 942
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    # getter for: Lcom/android/systemui/ImageWallpaper;->SUPPORT_TILT_WALLPAPER:Z
    invoke-static {v7}, Lcom/android/systemui/ImageWallpaper;->access$200(Lcom/android/systemui/ImageWallpaper;)Z

    move-result v7

    if-eqz v7, :cond_7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    iget-boolean v7, v7, Lcom/android/systemui/ImageWallpaper;->mWallpaperTiltSettingEnabled:Z

    if-eqz v7, :cond_7

    .line 943
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mMobileKeyboardWidth:I

    move/from16 v0, v19

    if-eq v0, v7, :cond_1

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->width()I

    move-result v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVpWidth:I

    if-eq v7, v8, :cond_1

    .line 944
    move/from16 v0, v19

    int-to-float v7, v0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mScale:F

    mul-float/2addr v7, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVpWidth:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    float-to-int v7, v7

    div-int/lit8 v7, v7, 0x2

    add-int v31, v7, p4

    .line 945
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->width()I

    move-result v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOrthoWidth:I

    sub-int/2addr v7, v8

    div-int/lit8 v23, v7, 0x2

    .line 946
    sub-int p4, p4, v23

    .line 947
    move/from16 v0, v23

    int-to-float v7, v0

    sub-float v26, v26, v7

    .line 950
    :cond_1
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->height()I

    move-result v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOrthoHeight:I

    sub-int/2addr v7, v8

    div-int/lit8 v24, v7, 0x2

    .line 951
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOrthoHeight:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVpHeight:I

    sub-int/2addr v7, v8

    add-int v32, v7, v24

    .line 971
    :goto_1
    # getter for: Lcom/android/systemui/ImageWallpaper;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$100()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 972
    const-string v7, "ImageWallpaper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "drawWallpaperWithOpenGL  mOrthoWidth : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOrthoWidth:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mOrthoHeight : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOrthoHeight:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    const-string v7, "ImageWallpaper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "drawWallpaperWithOpenGL  mVpWidth : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVpWidth:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mVpHeight : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVpHeight:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    :cond_2
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOrthoWidth:I

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOrthoHeight:I

    int-to-float v8, v8

    const/4 v9, 0x0

    const/high16 v10, -0x40800000    # -1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual/range {v5 .. v11}, Landroid/renderscript/Matrix4f;->loadOrtho(FFFFFF)V

    .line 978
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, v26

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->createMesh(IIFF)Ljava/nio/FloatBuffer;

    move-result-object v11

    .line 980
    .local v11, "triangleVertices":Ljava/nio/FloatBuffer;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->loadTexture(Landroid/graphics/Bitmap;)I

    move-result v28

    .line 983
    .local v28, "texture":I
    # getter for: Lcom/android/systemui/ImageWallpaper;->NEED_CUSTOMIZING:Z
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$000()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 984
    const-string v7, "attribute vec4 position;\nattribute vec2 texCoords;\nvarying vec2 outTexCoords;\nuniform mat4 projection;\n\nvoid main(void) {\n    outTexCoords = texCoords;\n    gl_Position = projection * position;\n}\n\n"

    const-string v8, "precision mediump float;\nuniform float filterParams[25];\nvarying vec2 outTexCoords;\nuniform sampler2D texture;\n\nvoid main(void) {\n    vec4 startColor_top = vec4(filterParams[1], filterParams[2], filterParams[3], filterParams[4]);\n    vec4 endColor_top = vec4(filterParams[5], filterParams[6], filterParams[7], filterParams[8]);\n    vec4 startColor_bottom = vec4(filterParams[9], filterParams[10], filterParams[11], filterParams[12]);\n    vec4 endColor_bottom = vec4(filterParams[13], filterParams[14], filterParams[15], filterParams[16]);\n    vec2 startPoint_top = vec2(filterParams[17], filterParams[18]);\n    vec2 endPoint_top = vec2(filterParams[19], filterParams[20]);\n    vec2 startPoint_bottom = vec2(filterParams[21], filterParams[22]);\n    vec2 endPoint_bottom = vec2(filterParams[23], filterParams[24]);\n    vec2 send_top = endPoint_top - startPoint_top;\n    vec2 scur_top = outTexCoords - startPoint_top;\n    vec2 send_bottom = endPoint_bottom - startPoint_bottom;\n    vec2 scur_bottom = outTexCoords - startPoint_bottom;\n    float proj_top = dot(send_top, scur_top) / dot(send_top, send_top);\n    vec4 mask_top = mix(startColor_top, endColor_top, smoothstep(0.0, 1.0, proj_top));\n    float proj_bottom = dot(send_bottom, scur_bottom) / dot(send_bottom, send_bottom);\n    vec4 mask_bottom = mix(startColor_bottom, endColor_bottom, smoothstep(0.0, 1.0, proj_bottom));\n    mask_top.rgb *= mask_top.a;\n    mask_bottom.rgb *= mask_bottom.a;\n    gl_FragColor = texture2D(texture, outTexCoords);\n    gl_FragColor = mask_top + gl_FragColor * (1.0 - mask_top.a);\n    gl_FragColor = mask_bottom + gl_FragColor * (1.0 - mask_bottom.a);\n}\n\n"

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->buildProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v25

    .line 989
    .local v25, "program":I
    :goto_2
    const-string v7, "position"

    move/from16 v0, v25

    invoke-static {v0, v7}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v6

    .line 990
    .local v6, "attribPosition":I
    const-string v7, "texCoords"

    move/from16 v0, v25

    invoke-static {v0, v7}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v12

    .line 991
    .local v12, "attribTexCoords":I
    const-string v7, "texture"

    move/from16 v0, v25

    invoke-static {v0, v7}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v30

    .line 992
    .local v30, "uniformTexture":I
    const-string v7, "projection"

    move/from16 v0, v25

    invoke-static {v0, v7}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v29

    .line 994
    .local v29, "uniformProjection":I
    const/16 v21, 0x0

    .line 995
    .local v21, "filterParamHandle":I
    # getter for: Lcom/android/systemui/ImageWallpaper;->NEED_CUSTOMIZING:Z
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$000()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 996
    const-string v7, "filterParams"

    move/from16 v0, v25

    invoke-static {v0, v7}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v21

    .line 997
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->setFilterParams(Landroid/view/SurfaceHolder;I)V

    .line 1000
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->checkGlError()V

    .line 1002
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVpWidth:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVpHeight:I

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-static {v0, v1, v7, v8}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 1003
    const/16 v7, 0xde1

    move/from16 v0, v28

    invoke-static {v7, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1005
    invoke-static/range {v25 .. v25}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 1006
    invoke-static {v6}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1007
    invoke-static {v12}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1008
    const/4 v7, 0x0

    move/from16 v0, v30

    invoke-static {v0, v7}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 1009
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v5}, Landroid/renderscript/Matrix4f;->getArray()[F

    move-result-object v9

    const/4 v10, 0x0

    move/from16 v0, v29

    invoke-static {v0, v7, v8, v9, v10}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 1011
    # getter for: Lcom/android/systemui/ImageWallpaper;->NEED_CUSTOMIZING:Z
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$000()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1012
    const/16 v7, 0x19

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mFilterParams:[F

    const/4 v9, 0x0

    move/from16 v0, v21

    invoke-static {v0, v7, v8, v9}, Landroid/opengl/GLES20;->glUniform1fv(II[FI)V

    .line 1015
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->checkGlError()V

    .line 1017
    if-gtz p2, :cond_5

    if-lez p3, :cond_6

    .line 1018
    :cond_5
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 1019
    const/16 v7, 0x4000

    invoke-static {v7}, Landroid/opengl/GLES20;->glClear(I)V

    .line 1023
    :cond_6
    const/4 v7, 0x0

    invoke-virtual {v11, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 1024
    const/4 v7, 0x3

    const/16 v8, 0x1406

    const/4 v9, 0x0

    const/16 v10, 0x14

    invoke-static/range {v6 .. v11}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1027
    const/4 v7, 0x3

    invoke-virtual {v11, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 1028
    const/4 v13, 0x3

    const/16 v14, 0x1406

    const/4 v15, 0x0

    const/16 v16, 0x14

    move-object/from16 v17, v11

    invoke-static/range {v12 .. v17}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1031
    const/4 v7, 0x5

    const/4 v8, 0x0

    const/4 v9, 0x4

    invoke-static {v7, v8, v9}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 1033
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v7, v8, v9}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v27

    .line 1034
    .local v27, "status":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->checkEglError()V

    .line 1036
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->finishGL()V

    goto/16 :goto_0

    .line 954
    .end local v6    # "attribPosition":I
    .end local v11    # "triangleVertices":Ljava/nio/FloatBuffer;
    .end local v12    # "attribTexCoords":I
    .end local v21    # "filterParamHandle":I
    .end local v25    # "program":I
    .end local v27    # "status":Z
    .end local v28    # "texture":I
    .end local v29    # "uniformProjection":I
    .end local v30    # "uniformTexture":I
    :cond_7
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mMobileKeyboardWidth:I

    move/from16 v0, v19

    if-eq v0, v7, :cond_8

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->width()I

    move-result v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVpWidth:I

    if-eq v7, v8, :cond_8

    .line 955
    move/from16 v0, v19

    int-to-float v7, v0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mScale:F

    mul-float/2addr v7, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVpWidth:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    float-to-int v7, v7

    div-int/lit8 v7, v7, 0x2

    add-int v31, v7, p4

    .line 956
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->width()I

    move-result v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOrthoWidth:I

    sub-int/2addr v7, v8

    div-int/lit8 v23, v7, 0x2

    .line 957
    sub-int p4, p4, v23

    .line 958
    move/from16 v0, v23

    int-to-float v7, v0

    sub-float v26, v26, v7

    .line 960
    :cond_8
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOrthoHeight:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVpHeight:I

    sub-int v32, v7, v8

    goto/16 :goto_1

    .line 963
    :cond_9
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->width()I

    move-result v7

    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOrthoWidth:I

    .line 964
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->height()I

    move-result v7

    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOrthoHeight:I

    .line 965
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->width()I

    move-result v7

    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVpWidth:I

    .line 966
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->height()I

    move-result v7

    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVpHeight:I

    .line 967
    const/16 v31, 0x0

    .line 968
    const/16 v32, 0x0

    goto/16 :goto_1

    .line 986
    .restart local v11    # "triangleVertices":Ljava/nio/FloatBuffer;
    .restart local v28    # "texture":I
    :cond_a
    const-string v7, "attribute vec4 position;\nattribute vec2 texCoords;\nvarying vec2 outTexCoords;\nuniform mat4 projection;\n\nvoid main(void) {\n    outTexCoords = texCoords;\n    gl_Position = projection * position;\n}\n\n"

    const-string v8, "precision mediump float;\nvarying vec2 outTexCoords;\nuniform sampler2D texture;\n\nvoid main(void) {\n    gl_FragColor = texture2D(texture, outTexCoords);\n}\n\n"

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->buildProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v25

    .restart local v25    # "program":I
    goto/16 :goto_2
.end method

.method private finishGL()V
    .locals 5

    .prologue
    .line 1221
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 1222
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 1223
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 1224
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 1225
    return-void
.end method

.method private getConfig()[I
    .locals 1

    .prologue
    .line 1317
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 4
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x0
        0x3025
        0x0
        0x3026
        0x0
        0x3027
        0x3038
        0x3038
    .end array-data
.end method

.method private getDefaultDisplaySize()Landroid/graphics/Point;
    .locals 5

    .prologue
    .line 540
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 541
    .local v2, "p":Landroid/graphics/Point;
    iget-object v4, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-virtual {v4}, Lcom/android/systemui/ImageWallpaper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 542
    .local v0, "c":Landroid/content/Context;
    const-string v4, "window"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 543
    .local v3, "wm":Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 544
    .local v1, "d":Landroid/view/Display;
    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 545
    return-object v2
.end method

.method private getDisplayedWallpaperRegion([Landroid/graphics/Rect;)V
    .locals 14
    .param p1, "region"    # [Landroid/graphics/Rect;

    .prologue
    .line 798
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 802
    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v10

    .line 803
    .local v10, "sh":Landroid/view/SurfaceHolder;
    invoke-interface {v10}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v8

    .line 804
    .local v8, "frame":Landroid/graphics/Rect;
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v7

    .line 805
    .local v7, "dw":I
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 809
    .local v6, "dh":I
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    # getter for: Lcom/android/systemui/ImageWallpaper;->SUPPORT_TILT_WALLPAPER:Z
    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$200(Lcom/android/systemui/ImageWallpaper;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    iget-boolean v0, v0, Lcom/android/systemui/ImageWallpaper;->mWallpaperTiltSettingEnabled:Z

    if-eqz v0, :cond_1

    .line 810
    const v9, 0x3f653f7d    # 0.8955f

    .line 814
    .local v9, "ratio":F
    :goto_0
    int-to-float v0, v7

    mul-float/2addr v0, v9

    float-to-int v7, v0

    .line 815
    int-to-float v0, v6

    mul-float/2addr v0, v9

    float-to-int v6, v0

    .line 817
    if-le v7, v6, :cond_2

    .line 818
    move v3, v7

    .line 819
    .local v3, "viewHeight":I
    move v2, v6

    .line 820
    .local v2, "viewWidth":I
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int v4, v0, v6

    .line 821
    .local v4, "deltaX":I
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int v5, v0, v7

    .line 830
    .local v5, "deltaY":I
    :goto_1
    const/4 v0, 0x0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    aput-object v1, p1, v0

    .line 831
    const/4 v0, 0x0

    aget-object v1, p1, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->getImageRegionForDisplay(Landroid/graphics/Rect;IIII)V

    .line 833
    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mExtractMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 834
    if-ge v7, v6, :cond_3

    .line 835
    move v3, v7

    .line 836
    move v2, v6

    .line 837
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int v4, v0, v6

    .line 838
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int v5, v0, v7

    .line 847
    :goto_2
    const/4 v0, 0x1

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    aput-object v1, p1, v0

    .line 848
    const/4 v0, 0x2

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    aput-object v1, p1, v0

    .line 849
    const/4 v0, 0x1

    aget-object v1, p1, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->getImageRegionForDisplay(Landroid/graphics/Rect;IIII)V

    .line 850
    const/4 v0, 0x2

    aget-object v0, p1, v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    const/4 v11, 0x1

    aget-object v11, p1, v11

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    const/4 v12, 0x0

    aget-object v12, p1, v12

    iget v12, v12, Landroid/graphics/Rect;->right:I

    const/4 v13, 0x0

    aget-object v13, p1, v13

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v11, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 851
    const/4 v0, 0x0

    aget-object v0, p1, v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    const/4 v11, 0x0

    aget-object v11, p1, v11

    iget v11, v11, Landroid/graphics/Rect;->top:I

    const/4 v12, 0x0

    aget-object v12, p1, v12

    iget v12, v12, Landroid/graphics/Rect;->right:I

    const/4 v13, 0x1

    aget-object v13, p1, v13

    iget v13, v13, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v11, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 854
    .end local v2    # "viewWidth":I
    .end local v3    # "viewHeight":I
    .end local v4    # "deltaX":I
    .end local v5    # "deltaY":I
    .end local v6    # "dh":I
    .end local v7    # "dw":I
    .end local v8    # "frame":Landroid/graphics/Rect;
    .end local v9    # "ratio":F
    .end local v10    # "sh":Landroid/view/SurfaceHolder;
    :cond_0
    return-void

    .line 812
    .restart local v6    # "dh":I
    .restart local v7    # "dw":I
    .restart local v8    # "frame":Landroid/graphics/Rect;
    .restart local v10    # "sh":Landroid/view/SurfaceHolder;
    :cond_1
    const v9, 0x3f733333    # 0.95f

    .restart local v9    # "ratio":F
    goto/16 :goto_0

    .line 823
    :cond_2
    move v3, v6

    .line 824
    .restart local v3    # "viewHeight":I
    move v2, v7

    .line 825
    .restart local v2    # "viewWidth":I
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int v4, v0, v7

    .line 826
    .restart local v4    # "deltaX":I
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int v5, v0, v6

    .restart local v5    # "deltaY":I
    goto/16 :goto_1

    .line 840
    :cond_3
    move v3, v6

    .line 841
    move v2, v7

    .line 842
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int v4, v0, v7

    .line 843
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int v5, v0, v6

    goto :goto_2
.end method

.method private initGL(Landroid/view/SurfaceHolder;)Z
    .locals 13
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1228
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v6

    check-cast v6, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 1230
    iget-object v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v9, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v6, v9}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 1231
    iget-object v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v9, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v6, v9, :cond_0

    .line 1232
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "eglGetDisplay failed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v8}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v8

    invoke-static {v8}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1236
    :cond_0
    const/4 v6, 0x2

    new-array v5, v6, [I

    .line 1237
    .local v5, "version":[I
    iget-object v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v9, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v6, v9, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1238
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "eglInitialize failed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v8}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v8

    invoke-static {v8}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1242
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->chooseEglConfig()Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 1243
    iget-object v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez v6, :cond_2

    .line 1244
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "eglConfig not initialized"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1247
    :cond_2
    iget-object v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v9, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v10, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-virtual {p0, v6, v9, v10}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 1248
    iget-object v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v9, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v6, v9, :cond_3

    .line 1249
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createContext failed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v8}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v8

    invoke-static {v8}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1253
    :cond_3
    const/4 v6, 0x5

    new-array v0, v6, [I

    fill-array-data v0, :array_0

    .line 1258
    .local v0, "attribs":[I
    iget-object v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v9, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v10, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v6, v9, v10, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v4

    .line 1259
    .local v4, "tmpSurface":Ljavax/microedition/khronos/egl/EGLSurface;
    iget-object v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v9, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v10, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v6, v9, v4, v4, v10}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 1261
    new-array v3, v7, [I

    .line 1262
    .local v3, "maxSize":[I
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v2

    .line 1263
    .local v2, "frame":Landroid/graphics/Rect;
    const/16 v6, 0xd33

    invoke-static {v6, v3, v8}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 1265
    iget-object v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v9, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v10, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v11, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v12, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v6, v9, v10, v11, v12}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 1266
    iget-object v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v9, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v6, v9, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 1268
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v6

    aget v9, v3, v8

    if-gt v6, v9, :cond_4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v6

    aget v9, v3, v8

    if-le v6, v9, :cond_5

    .line 1269
    :cond_4
    iget-object v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v7, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v9, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v6, v7, v9}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 1270
    iget-object v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v7, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v6, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 1271
    const-string v6, "ImageWallpaperGL"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "requested  texture size "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "x"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " exceeds the support maximum of "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v9, v3, v8

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "x"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v9, v3, v8

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v8

    .line 1294
    :goto_0
    return v6

    .line 1277
    :cond_5
    iget-object v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v9, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v10, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    const/4 v11, 0x0

    invoke-interface {v6, v9, v10, p1, v11}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 1278
    iget-object v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v9, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v6, v9, :cond_9

    .line 1279
    :cond_6
    iget-object v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v6}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    .line 1280
    .local v1, "error":I
    const/16 v6, 0x300b

    if-eq v1, v6, :cond_7

    const/16 v6, 0x3003

    if-ne v1, v6, :cond_8

    .line 1281
    :cond_7
    const-string v6, "ImageWallpaperGL"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "createWindowSurface returned "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "."

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v8

    .line 1283
    goto :goto_0

    .line 1285
    :cond_8
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createWindowSurface failed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1289
    .end local v1    # "error":I
    :cond_9
    iget-object v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v8, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v9, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v10, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v11, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v6, v8, v9, v10, v11}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 1290
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "eglMakeCurrent failed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v8}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v8

    invoke-static {v8}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_a
    move v6, v7

    .line 1294
    goto/16 :goto_0

    .line 1253
    :array_0
    .array-data 4
        0x3057
        0x1
        0x3056
        0x1
        0x3038
    .end array-data
.end method

.method private isWhiteCSCWallpaper()Z
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 756
    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 757
    .local v1, "saleCode":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-virtual {v2}, Lcom/android/systemui/ImageWallpaper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "need_dark_font"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 758
    .local v0, "darkFont":I
    const-string v2, "ImageWallpaper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isWhiteCSCWallpaper "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    if-ne v0, v5, :cond_1

    const-string v2, "XTE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SMA"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 760
    :cond_0
    const/4 v2, 0x1

    .line 762
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private loadTexture(Landroid/graphics/Bitmap;)I
    .locals 8
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const v5, 0x812f

    const/16 v4, 0x2601

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/16 v0, 0xde1

    .line 1132
    new-array v7, v3, [I

    .line 1134
    .local v7, "textures":[I
    const v2, 0x84c0

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 1135
    invoke-static {v3, v7, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 1136
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->checkGlError()V

    .line 1138
    aget v6, v7, v1

    .line 1139
    .local v6, "texture":I
    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1140
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->checkGlError()V

    .line 1142
    const/16 v2, 0x2801

    invoke-static {v0, v2, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 1143
    const/16 v2, 0x2800

    invoke-static {v0, v2, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 1145
    const/16 v2, 0x2802

    invoke-static {v0, v2, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 1146
    const/16 v2, 0x2803

    invoke-static {v0, v2, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 1148
    const/16 v2, 0x1908

    const/16 v4, 0x1401

    move-object v3, p1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLUtils;->texImage2D(IIILandroid/graphics/Bitmap;II)V

    .line 1149
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->checkGlError()V

    .line 1151
    return v6
.end method

.method private setFilterParams(Landroid/view/SurfaceHolder;I)V
    .locals 12
    .param p1, "sh"    # Landroid/view/SurfaceHolder;
    .param p2, "h"    # I

    .prologue
    const/high16 v11, 0x3f800000    # 1.0f

    const/16 v10, 0xc

    const v9, 0x3e4ccccd    # 0.2f

    const/4 v8, 0x0

    const v7, 0x3dcccccd    # 0.1f

    .line 1042
    iget-object v5, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mFilterParams:[F

    const/4 v6, 0x0

    aput v11, v5, v6

    .line 1045
    iget-object v5, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mFilterParams:[F

    const/4 v6, 0x1

    aput v7, v5, v6

    .line 1046
    iget-object v5, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mFilterParams:[F

    const/4 v6, 0x2

    aput v7, v5, v6

    .line 1047
    iget-object v5, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mFilterParams:[F

    const/4 v6, 0x3

    aput v7, v5, v6

    .line 1048
    iget-object v5, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mFilterParams:[F

    const/4 v6, 0x4

    aput v9, v5, v6

    .line 1050
    iget-object v5, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mFilterParams:[F

    const/4 v6, 0x5

    aput v7, v5, v6

    .line 1051
    iget-object v5, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mFilterParams:[F

    const/4 v6, 0x6

    aput v7, v5, v6

    .line 1052
    iget-object v5, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mFilterParams:[F

    const/4 v6, 0x7

    aput v7, v5, v6

    .line 1053
    iget-object v5, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mFilterParams:[F

    const/16 v6, 0x8

    aput v8, v5, v6

    .line 1056
    iget-object v5, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mFilterParams:[F

    const/16 v6, 0x9

    aput v7, v5, v6

    .line 1057
    iget-object v5, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mFilterParams:[F

    const/16 v6, 0xa

    aput v7, v5, v6

    .line 1058
    iget-object v5, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mFilterParams:[F

    const/16 v6, 0xb

    aput v7, v5, v6

    .line 1059
    iget v5, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mNeedBlackText:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 1060
    iget-object v5, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mFilterParams:[F

    aput v8, v5, v10

    .line 1069
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mFilterParams:[F

    const/16 v6, 0xd

    aput v7, v5, v6

    .line 1070
    iget-object v5, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mFilterParams:[F

    const/16 v6, 0xe

    aput v7, v5, v6

    .line 1071
    iget-object v5, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mFilterParams:[F

    const/16 v6, 0xf

    aput v7, v5, v6

    .line 1072
    iget-object v5, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mFilterParams:[F

    const/16 v6, 0x10

    aput v8, v5, v6

    .line 1074
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v0

    .line 1075
    .local v0, "frame":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int v1, v5, p2

    .line 1076
    .local v1, "imageHeight":I
    const/4 v2, 0x0

    .line 1077
    .local v2, "offsetY1":F
    const/4 v3, 0x0

    .line 1078
    .local v3, "offsetY2":F
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->getDefaultDisplaySize()Landroid/graphics/Point;

    move-result-object v4

    .line 1080
    .local v4, "p":Landroid/graphics/Point;
    neg-int p2, p2

    .line 1081
    iget v5, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 1082
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget v6, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v6

    add-int/2addr p2, v5

    .line 1084
    :cond_0
    div-int/lit8 p2, p2, 0x2

    .line 1085
    iget-object v5, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    # getter for: Lcom/android/systemui/ImageWallpaper;->SUPPORT_TILT_WALLPAPER:Z
    invoke-static {v5}, Lcom/android/systemui/ImageWallpaper;->access$200(Lcom/android/systemui/ImageWallpaper;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    iget-boolean v5, v5, Lcom/android/systemui/ImageWallpaper;->mWallpaperTiltSettingEnabled:Z

    if-eqz v5, :cond_4

    .line 1086
    iget v5, v4, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    mul-float/2addr v5, v9

    int-to-float v6, v1

    div-float v3, v5, v6

    .line 1091
    :goto_1
    if-lez p2, :cond_1

    .line 1092
    int-to-float v5, p2

    int-to-float v6, v1

    div-float v2, v5, v6

    .line 1096
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mFilterParams:[F

    const/16 v6, 0x11

    aput v8, v5, v6

    .line 1097
    iget-object v5, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mFilterParams:[F

    const/16 v6, 0x12

    aput v2, v5, v6

    .line 1098
    iget-object v5, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mFilterParams:[F

    const/16 v6, 0x13

    aput v8, v5, v6

    .line 1099
    iget-object v5, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mFilterParams:[F

    const/16 v6, 0x14

    add-float v7, v2, v3

    aput v7, v5, v6

    .line 1101
    iget-object v5, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    # getter for: Lcom/android/systemui/ImageWallpaper;->SUPPORT_TILT_WALLPAPER:Z
    invoke-static {v5}, Lcom/android/systemui/ImageWallpaper;->access$200(Lcom/android/systemui/ImageWallpaper;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    iget-boolean v5, v5, Lcom/android/systemui/ImageWallpaper;->mWallpaperTiltSettingEnabled:Z

    if-eqz v5, :cond_5

    .line 1102
    iget v5, v4, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    const/high16 v6, 0x3e800000    # 0.25f

    mul-float/2addr v5, v6

    int-to-float v6, v1

    div-float v3, v5, v6

    .line 1107
    :goto_2
    sub-float v2, v11, v2

    .line 1109
    iget-object v5, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mFilterParams:[F

    const/16 v6, 0x15

    aput v8, v5, v6

    .line 1110
    iget-object v5, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mFilterParams:[F

    const/16 v6, 0x16

    aput v2, v5, v6

    .line 1111
    iget-object v5, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mFilterParams:[F

    const/16 v6, 0x17

    aput v8, v5, v6

    .line 1112
    iget-object v5, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mFilterParams:[F

    const/16 v6, 0x18

    sub-float v7, v2, v3

    aput v7, v5, v6

    .line 1113
    return-void

    .line 1062
    .end local v0    # "frame":Landroid/graphics/Rect;
    .end local v1    # "imageHeight":I
    .end local v2    # "offsetY1":F
    .end local v3    # "offsetY2":F
    .end local v4    # "p":Landroid/graphics/Point;
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    # getter for: Lcom/android/systemui/ImageWallpaper;->SUPPORT_TILT_WALLPAPER:Z
    invoke-static {v5}, Lcom/android/systemui/ImageWallpaper;->access$200(Lcom/android/systemui/ImageWallpaper;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    iget-boolean v5, v5, Lcom/android/systemui/ImageWallpaper;->mWallpaperTiltSettingEnabled:Z

    if-eqz v5, :cond_3

    .line 1063
    iget-object v5, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mFilterParams:[F

    const v6, 0x3e99999a    # 0.3f

    aput v6, v5, v10

    goto/16 :goto_0

    .line 1065
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mFilterParams:[F

    aput v9, v5, v10

    goto/16 :goto_0

    .line 1088
    .restart local v0    # "frame":Landroid/graphics/Rect;
    .restart local v1    # "imageHeight":I
    .restart local v2    # "offsetY1":F
    .restart local v3    # "offsetY2":F
    .restart local v4    # "p":Landroid/graphics/Point;
    :cond_4
    iget v5, v4, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    mul-float/2addr v5, v7

    int-to-float v6, v1

    div-float v3, v5, v6

    goto :goto_1

    .line 1104
    :cond_5
    iget v5, v4, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    const v6, 0x3e0f5c29    # 0.14f

    mul-float/2addr v5, v6

    int-to-float v6, v1

    div-float v3, v5, v6

    goto :goto_2
.end method

.method private updateWallpaperLocked()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 766
    const/4 v2, 0x0

    .line 768
    .local v2, "exception":Ljava/lang/Throwable;
    const/4 v3, 0x0

    :try_start_0
    iput-object v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    .line 769
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundWidth:I

    .line 770
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundHeight:I

    .line 771
    iget-object v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    iget-object v3, v3, Lcom/android/systemui/ImageWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v3}, Landroid/app/WallpaperManager;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    .line 772
    iget-object v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundWidth:I

    .line 773
    iget-object v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundHeight:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 780
    :goto_0
    if-eqz v2, :cond_0

    .line 781
    iput-object v5, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    .line 782
    iput v4, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundWidth:I

    .line 783
    iput v4, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundHeight:I

    .line 787
    const-string v3, "ImageWallpaper"

    const-string v4, "Unable to load wallpaper!"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 789
    :try_start_1
    iget-object v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    iget-object v3, v3, Lcom/android/systemui/ImageWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v3}, Landroid/app/WallpaperManager;->clear()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 795
    :cond_0
    :goto_1
    return-void

    .line 774
    :catch_0
    move-exception v0

    .line 775
    .local v0, "e":Ljava/lang/RuntimeException;
    move-object v2, v0

    .line 778
    goto :goto_0

    .line 776
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 777
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    move-object v2, v0

    goto :goto_0

    .line 790
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :catch_2
    move-exception v1

    .line 792
    .local v1, "ex":Ljava/io/IOException;
    const-string v3, "ImageWallpaper"

    const-string v4, "Unable reset to default wallpaper!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public checkNobleDevice()Z
    .locals 2

    .prologue
    .line 385
    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 386
    .local v0, "productName":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "noblelte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "zenlte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 387
    :cond_0
    const/4 v1, 0x1

    .line 389
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public checkSurfaceSize(Ljava/lang/String;)V
    .locals 4
    .param p1, "callingMethod"    # Ljava/lang/String;

    .prologue
    .line 533
    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-virtual {v1}, Lcom/android/systemui/ImageWallpaper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 534
    .local v0, "newRotation":I
    iget v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceWidth:I

    iget v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceHeight:I

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 535
    const-string v1, "ImageWallpaper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "----checkSurfaceSize : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mLastSurfaceWidth: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mLastSurfaceHeight: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mLastRotation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastRotation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :cond_0
    return-void
.end method

.method createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 2
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "eglDisplay"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "eglConfig"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 1299
    const/4 v1, 0x3

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 1300
    .local v0, "attrib_list":[I
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p1, p2, p3, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    return-object v1

    .line 1299
    nop

    :array_0
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method drawFrame()V
    .locals 1

    .prologue
    .line 549
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->drawFrame(Z)V

    .line 550
    return-void
.end method

.method drawFrame(Z)V
    .locals 22
    .param p1, "forceUpdate"    # Z

    .prologue
    .line 555
    # getter for: Lcom/android/systemui/ImageWallpaper;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$100()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 556
    const-string v2, "ImageWallpaper"

    const-string v18, "drawFrame:"

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-virtual {v2}, Lcom/android/systemui/ImageWallpaper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v13, v2, Landroid/content/res/Configuration;->orientation:I

    .line 562
    .local v13, "newRotation":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    # getter for: Lcom/android/systemui/ImageWallpaper;->SUPPORT_MOBILE_KEYBOARD:Z
    invoke-static {v2}, Lcom/android/systemui/ImageWallpaper;->access$300(Lcom/android/systemui/ImageWallpaper;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 563
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/ImageWallpaper;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    move/from16 v18, v0

    move/from16 v0, v18

    # setter for: Lcom/android/systemui/ImageWallpaper;->mNewKeyboard:I
    invoke-static {v2, v0}, Lcom/android/systemui/ImageWallpaper;->access$402(Lcom/android/systemui/ImageWallpaper;I)I

    .line 564
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastRotation:I

    if-ne v13, v2, :cond_1

    if-nez p1, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    # getter for: Lcom/android/systemui/ImageWallpaper;->mNewKeyboard:I
    invoke-static {v2}, Lcom/android/systemui/ImageWallpaper;->access$400(Lcom/android/systemui/ImageWallpaper;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    move-object/from16 v18, v0

    # getter for: Lcom/android/systemui/ImageWallpaper;->mLastKeyboard:I
    invoke-static/range {v18 .. v18}, Lcom/android/systemui/ImageWallpaper;->access$500(Lcom/android/systemui/ImageWallpaper;)I

    move-result v18

    move/from16 v0, v18

    if-eq v2, v0, :cond_2

    .line 566
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->updateSurfaceSize(Landroid/view/SurfaceHolder;)V

    .line 576
    :cond_2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    .line 577
    .local v3, "sh":Landroid/view/SurfaceHolder;
    invoke-interface {v3}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v12

    .line 578
    .local v12, "frame":Landroid/graphics/Rect;
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v11

    .line 579
    .local v11, "dw":I
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v10

    .line 580
    .local v10, "dh":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceWidth:I

    if-ne v11, v2, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceHeight:I

    if-eq v10, v2, :cond_9

    :cond_3
    const/4 v15, 0x1

    .line 582
    .local v15, "surfaceDimensionsChanged":Z
    :goto_1
    # getter for: Lcom/android/systemui/ImageWallpaper;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$100()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 583
    const-string v2, "ImageWallpaper"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "surfaceDimensionsChanged : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " newRotation : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " mLastRotation : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastRotation:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    # getter for: Lcom/android/systemui/ImageWallpaper;->SUPPORT_MOBILE_KEYBOARD:Z
    invoke-static {v2}, Lcom/android/systemui/ImageWallpaper;->access$300(Lcom/android/systemui/ImageWallpaper;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 585
    const-string v2, "ImageWallpaper"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "mNewKeyboard : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    move-object/from16 v19, v0

    # getter for: Lcom/android/systemui/ImageWallpaper;->mNewKeyboard:I
    invoke-static/range {v19 .. v19}, Lcom/android/systemui/ImageWallpaper;->access$400(Lcom/android/systemui/ImageWallpaper;)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " mLastKeyboard : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    move-object/from16 v19, v0

    # getter for: Lcom/android/systemui/ImageWallpaper;->mLastKeyboard:I
    invoke-static/range {v19 .. v19}, Lcom/android/systemui/ImageWallpaper;->access$500(Lcom/android/systemui/ImageWallpaper;)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    # getter for: Lcom/android/systemui/ImageWallpaper;->SUPPORT_MOBILE_KEYBOARD:Z
    invoke-static {v2}, Lcom/android/systemui/ImageWallpaper;->access$300(Lcom/android/systemui/ImageWallpaper;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 590
    if-nez v15, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastRotation:I

    if-ne v13, v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    # getter for: Lcom/android/systemui/ImageWallpaper;->mNewKeyboard:I
    invoke-static {v2}, Lcom/android/systemui/ImageWallpaper;->access$400(Lcom/android/systemui/ImageWallpaper;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    move-object/from16 v18, v0

    # getter for: Lcom/android/systemui/ImageWallpaper;->mLastKeyboard:I
    invoke-static/range {v18 .. v18}, Lcom/android/systemui/ImageWallpaper;->access$500(Lcom/android/systemui/ImageWallpaper;)I

    move-result v18

    move/from16 v0, v18

    if-eq v2, v0, :cond_a

    :cond_5
    const/4 v14, 0x1

    .line 591
    .local v14, "redrawNeeded":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    move-object/from16 v18, v0

    # getter for: Lcom/android/systemui/ImageWallpaper;->mNewKeyboard:I
    invoke-static/range {v18 .. v18}, Lcom/android/systemui/ImageWallpaper;->access$400(Lcom/android/systemui/ImageWallpaper;)I

    move-result v18

    move/from16 v0, v18

    # setter for: Lcom/android/systemui/ImageWallpaper;->mLastKeyboard:I
    invoke-static {v2, v0}, Lcom/android/systemui/ImageWallpaper;->access$502(Lcom/android/systemui/ImageWallpaper;I)I

    .line 596
    :goto_3
    if-nez v14, :cond_e

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOffsetsChanged:Z

    if-nez v2, :cond_e

    .line 597
    # getter for: Lcom/android/systemui/ImageWallpaper;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$100()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 598
    const-string v2, "ImageWallpaper"

    const-string v18, "Suppressed drawFrame since redraw is not needed and offsets have not changed."

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    :cond_6
    :goto_4
    return-void

    .line 570
    .end local v3    # "sh":Landroid/view/SurfaceHolder;
    .end local v10    # "dh":I
    .end local v11    # "dw":I
    .end local v12    # "frame":Landroid/graphics/Rect;
    .end local v14    # "redrawNeeded":Z
    .end local v15    # "surfaceDimensionsChanged":Z
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastRotation:I

    if-ne v13, v2, :cond_8

    if-eqz p1, :cond_2

    .line 572
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->updateSurfaceSize(Landroid/view/SurfaceHolder;)V

    goto/16 :goto_0

    .line 580
    .restart local v3    # "sh":Landroid/view/SurfaceHolder;
    .restart local v10    # "dh":I
    .restart local v11    # "dw":I
    .restart local v12    # "frame":Landroid/graphics/Rect;
    :cond_9
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 590
    .restart local v15    # "surfaceDimensionsChanged":Z
    :cond_a
    const/4 v14, 0x0

    goto :goto_2

    .line 593
    :cond_b
    if-nez v15, :cond_c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastRotation:I

    if-eq v13, v2, :cond_d

    :cond_c
    const/4 v14, 0x1

    .restart local v14    # "redrawNeeded":Z
    :goto_5
    goto :goto_3

    .end local v14    # "redrawNeeded":Z
    :cond_d
    const/4 v14, 0x0

    goto :goto_5

    .line 603
    .restart local v14    # "redrawNeeded":Z
    :cond_e
    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastRotation:I

    .line 606
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_f

    if-eqz v15, :cond_16

    .line 607
    :cond_f
    # getter for: Lcom/android/systemui/ImageWallpaper;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$100()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 608
    const-string v18, "ImageWallpaper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Reloading bitmap: mBackground, bgw, bgh, dw, dh = "

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v19, ", "

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    if-nez v2, :cond_12

    const/4 v2, 0x0

    :goto_6
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v19, ", "

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    if-nez v2, :cond_13

    const/4 v2, 0x0

    :goto_7
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v19, ", "

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v19, ", "

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    if-nez v2, :cond_11

    .line 616
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    iget-object v2, v2, Lcom/android/systemui/ImageWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v2}, Landroid/app/WallpaperManager;->forgetLoadedWallpaper()V

    .line 617
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->updateWallpaperLocked()V

    .line 619
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    if-nez v2, :cond_14

    .line 620
    # getter for: Lcom/android/systemui/ImageWallpaper;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$100()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 621
    const-string v2, "ImageWallpaper"

    const-string v18, "Unable to load bitmap"

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 608
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    goto :goto_6

    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    goto :goto_7

    .line 625
    :cond_14
    # getter for: Lcom/android/systemui/ImageWallpaper;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$100()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 626
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v11, v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-eq v10, v2, :cond_16

    .line 627
    :cond_15
    const-string v2, "ImageWallpaper"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Surface != bitmap dimensions: surface w/h, bitmap w/h: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mGetBackgroundHSV:Z

    if-nez v2, :cond_1a

    .line 636
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-virtual {v2}, Lcom/android/systemui/ImageWallpaper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v18, "android.wallpaper.settings_systemui_transparency"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v2, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1f

    const/4 v2, 0x1

    :goto_8
    # setter for: Lcom/android/systemui/ImageWallpaper;->NEED_CUSTOMIZING:Z
    invoke-static {v2}, Lcom/android/systemui/ImageWallpaper;->access$002(Z)Z

    .line 638
    # getter for: Lcom/android/systemui/ImageWallpaper;->NEED_CUSTOMIZING:Z
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$000()Z

    move-result v2

    if-nez v2, :cond_17

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->isWhiteCSCWallpaper()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 644
    :cond_17
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mExtractMode:I

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v2, v0, :cond_20

    .line 645
    const/4 v2, 0x3

    new-array v0, v2, [Landroid/graphics/Rect;

    move-object/from16 v16, v0

    .line 650
    .local v16, "targetRegion":[Landroid/graphics/Rect;
    :goto_9
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->getDisplayedWallpaperRegion([Landroid/graphics/Rect;)V

    .line 652
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Lcom/android/systemui/ImageWallpaper$ExtractColor;->getColorHSV(Landroid/graphics/Bitmap;[Landroid/graphics/Rect;)[F

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mColorHSV:[F

    .line 653
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mColorHSV:[F

    if-nez v2, :cond_21

    .line 654
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mNeedBlackText:I

    .line 667
    .end local v16    # "targetRegion":[Landroid/graphics/Rect;
    :cond_18
    :goto_a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mNeedBlackText:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/ImageWallpaper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "need_dark_font"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    if-eq v2, v0, :cond_19

    .line 669
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-virtual {v2}, Lcom/android/systemui/ImageWallpaper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v18, "need_dark_font"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mNeedBlackText:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v2, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 671
    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    .line 672
    .local v17, "wallpaperChangedIntent":Landroid/content/Intent;
    const-string v2, "com.sec.android.intent.action.WALLPAPER_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 674
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/android/systemui/ImageWallpaper;->sendBroadcast(Landroid/content/Intent;)V

    .line 676
    .end local v17    # "wallpaperChangedIntent":Landroid/content/Intent;
    :cond_19
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mGetBackgroundHSV:Z

    .line 679
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->isMobileKeyboard()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 680
    const/16 v2, 0x5a0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mMobileKeyboardWidth:I

    .line 681
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->checkNobleDevice()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 682
    const/16 v2, 0x724

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mMobileKeyboardHeight:I

    .line 687
    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    # getter for: Lcom/android/systemui/ImageWallpaper;->SUPPORT_TILT_WALLPAPER:Z
    invoke-static {v2}, Lcom/android/systemui/ImageWallpaper;->access$200(Lcom/android/systemui/ImageWallpaper;)Z

    move-result v2

    if-eqz v2, :cond_25

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    iget-boolean v2, v2, Lcom/android/systemui/ImageWallpaper;->mWallpaperTiltSettingEnabled:Z

    if-eqz v2, :cond_25

    .line 688
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mMobileKeyboardWidth:I

    int-to-double v0, v2

    move-wide/from16 v18, v0

    const-wide v20, 0x3ff199999999999aL    # 1.1

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-int v2, v0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVpWidth:I

    .line 689
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mMobileKeyboardHeight:I

    int-to-double v0, v2

    move-wide/from16 v18, v0

    const-wide v20, 0x3ff199999999999aL    # 1.1

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-int v2, v0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVpHeight:I

    .line 690
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mMobileKeyboardHeight:I

    int-to-double v0, v2

    move-wide/from16 v18, v0

    const-wide v20, 0x3fb999999999999aL    # 0.1

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-int v2, v0

    add-int/lit16 v2, v2, 0xa00

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOrthoHeight:I

    .line 691
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVpWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOrthoHeight:I

    move/from16 v18, v0

    mul-int v2, v2, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVpHeight:I

    move/from16 v18, v0

    div-int v2, v2, v18

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOrthoWidth:I

    .line 699
    :goto_c
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOrthoWidth:I

    .line 700
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOrthoHeight:I

    .line 703
    :cond_1b
    const/high16 v2, 0x3f800000    # 1.0f

    int-to-float v0, v11

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    int-to-float v0, v10

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v19, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(FF)F

    move-result v18

    move/from16 v0, v18

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mScale:F

    .line 705
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mScale:F

    move/from16 v18, v0

    mul-float v2, v2, v18

    float-to-int v2, v2

    sub-int v4, v11, v2

    .line 706
    .local v4, "availw":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mScale:F

    move/from16 v18, v0

    mul-float v2, v2, v18

    float-to-int v2, v2

    sub-int v5, v10, v2

    .line 707
    .local v5, "availh":I
    div-int/lit8 v6, v4, 0x2

    .line 708
    .local v6, "xPixels":I
    div-int/lit8 v7, v5, 0x2

    .line 713
    .local v7, "yPixels":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int v9, v11, v2

    .line 714
    .local v9, "availwUnscaled":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int v8, v10, v2

    .line 715
    .local v8, "availhUnscaled":I
    if-gez v9, :cond_1c

    int-to-float v2, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mXOffset:F

    move/from16 v18, v0

    const/high16 v19, 0x3f000000    # 0.5f

    sub-float v18, v18, v19

    mul-float v2, v2, v18

    const/high16 v18, 0x3f000000    # 0.5f

    add-float v2, v2, v18

    float-to-int v2, v2

    add-int/2addr v6, v2

    .line 716
    :cond_1c
    if-gez v8, :cond_1d

    int-to-float v2, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mYOffset:F

    move/from16 v18, v0

    const/high16 v19, 0x3f000000    # 0.5f

    sub-float v18, v18, v19

    mul-float v2, v2, v18

    const/high16 v18, 0x3f000000    # 0.5f

    add-float v2, v2, v18

    float-to-int v2, v2

    add-int/2addr v7, v2

    .line 718
    :cond_1d
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOffsetsChanged:Z

    .line 719
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mRedrawNeeded:Z

    .line 720
    if-eqz v15, :cond_1e

    .line 721
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceWidth:I

    .line 722
    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceHeight:I

    .line 724
    :cond_1e
    if-nez v14, :cond_26

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastXTranslation:I

    if-ne v6, v2, :cond_26

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastYTranslation:I

    if-ne v7, v2, :cond_26

    .line 725
    # getter for: Lcom/android/systemui/ImageWallpaper;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$100()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 726
    const-string v2, "ImageWallpaper"

    const-string v18, "Suppressed drawFrame since the image has not actually moved an integral number of pixels."

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 636
    .end local v4    # "availw":I
    .end local v5    # "availh":I
    .end local v6    # "xPixels":I
    .end local v7    # "yPixels":I
    .end local v8    # "availhUnscaled":I
    .end local v9    # "availwUnscaled":I
    :cond_1f
    const/4 v2, 0x0

    goto/16 :goto_8

    .line 647
    :cond_20
    const/4 v2, 0x1

    new-array v0, v2, [Landroid/graphics/Rect;

    move-object/from16 v16, v0

    .restart local v16    # "targetRegion":[Landroid/graphics/Rect;
    goto/16 :goto_9

    .line 656
    :cond_21
    # getter for: Lcom/android/systemui/ImageWallpaper;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$100()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 657
    const-string v2, "ImageWallpaper"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Hue="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mColorHSV:[F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", Saturation="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mColorHSV:[F

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", Value="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mColorHSV:[F

    move-object/from16 v19, v0

    const/16 v20, 0x2

    aget v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mColorHSV:[F

    const/16 v18, 0x1

    aget v2, v2, v18

    const v18, 0x3e99999a    # 0.3f

    cmpg-float v2, v2, v18

    if-gez v2, :cond_23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mColorHSV:[F

    const/16 v18, 0x2

    aget v2, v2, v18

    const v18, 0x3f6147ae    # 0.88f

    cmpl-float v2, v2, v18

    if-ltz v2, :cond_23

    .line 661
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mNeedBlackText:I

    goto/16 :goto_a

    .line 663
    :cond_23
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mNeedBlackText:I

    goto/16 :goto_a

    .line 684
    .end local v16    # "targetRegion":[Landroid/graphics/Rect;
    :cond_24
    const/16 v2, 0x6d8

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mMobileKeyboardHeight:I

    goto/16 :goto_b

    .line 693
    :cond_25
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mMobileKeyboardWidth:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVpWidth:I

    .line 694
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mMobileKeyboardHeight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVpHeight:I

    .line 695
    const/16 v2, 0xa00

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOrthoHeight:I

    .line 696
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVpWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOrthoHeight:I

    move/from16 v18, v0

    mul-int v2, v2, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVpHeight:I

    move/from16 v18, v0

    div-int v2, v2, v18

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOrthoWidth:I

    goto/16 :goto_c

    .line 731
    .restart local v4    # "availw":I
    .restart local v5    # "availh":I
    .restart local v6    # "xPixels":I
    .restart local v7    # "yPixels":I
    .restart local v8    # "availhUnscaled":I
    .restart local v9    # "availwUnscaled":I
    :cond_26
    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastXTranslation:I

    .line 732
    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastYTranslation:I

    .line 734
    # getter for: Lcom/android/systemui/ImageWallpaper;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$100()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 735
    const-string v2, "ImageWallpaper"

    const-string v18, "Redrawing wallpaper"

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    :cond_27
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    iget-boolean v2, v2, Lcom/android/systemui/ImageWallpaper;->mIsHwAccelerated:Z

    if-eqz v2, :cond_28

    move-object/from16 v2, p0

    .line 739
    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->drawWallpaperWithOpenGL(Landroid/view/SurfaceHolder;IIII)Z

    move-result v2

    if-nez v2, :cond_6

    move-object/from16 v2, p0

    .line 740
    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->drawWallpaperWithCanvas(Landroid/view/SurfaceHolder;IIII)V

    goto/16 :goto_4

    :cond_28
    move-object/from16 v2, p0

    .line 743
    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->drawWallpaperWithCanvas(Landroid/view/SurfaceHolder;IIII)V

    .line 750
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    .line 751
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    iget-object v2, v2, Lcom/android/systemui/ImageWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v2}, Landroid/app/WallpaperManager;->forgetLoadedWallpaper()V

    goto/16 :goto_4
.end method

.method getImageRegionForDisplay(Landroid/graphics/Rect;IIII)V
    .locals 14
    .param p1, "region"    # Landroid/graphics/Rect;
    .param p2, "viewWidth"    # I
    .param p3, "viewHeight"    # I
    .param p4, "deltaX"    # I
    .param p5, "deltaY"    # I

    .prologue
    .line 857
    if-eqz p3, :cond_0

    if-nez p2, :cond_1

    .line 858
    :cond_0
    const-string v10, "ImageWallpaper"

    const-string v11, "Investigate this::Unable to get viewRatio as viewHeight is zero"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {p1, v10, v11, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 894
    :goto_0
    return-void

    .line 862
    :cond_1
    iget-object v10, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 863
    .local v3, "imageWidth":I
    iget-object v10, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 864
    .local v1, "imageHeight":I
    if-eqz v3, :cond_2

    if-nez v1, :cond_3

    .line 865
    :cond_2
    const-string v10, "ImageWallpaper"

    const-string v11, "Investigate this::Unable to get imageRatio as imageHeight is zero"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {p1, v10, v11, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 870
    :cond_3
    move/from16 v0, p2

    int-to-float v10, v0

    move/from16 v0, p3

    int-to-float v11, v0

    div-float v8, v10, v11

    .line 871
    .local v8, "viewRatio":F
    int-to-float v10, v3

    int-to-float v11, v1

    div-float v2, v10, v11

    .line 873
    .local v2, "imageRatio":F
    cmpg-float v10, v8, v2

    if-gtz v10, :cond_4

    .line 874
    move/from16 v0, p3

    int-to-float v10, v0

    int-to-float v11, v1

    div-float v9, v10, v11

    .line 875
    .local v9, "viewScale":F
    move/from16 v0, p2

    int-to-float v10, v0

    div-float/2addr v10, v9

    float-to-int v7, v10

    .line 876
    .local v7, "scaledViewWidth":I
    sub-int v10, v3, v7

    int-to-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 878
    .local v4, "offsetX":I
    move/from16 v0, p4

    int-to-float v10, v0

    div-float/2addr v10, v9

    float-to-int v0, v10

    move/from16 p4, v0

    .line 879
    div-int/lit8 p4, p4, 0x2

    .line 880
    move/from16 v0, p5

    int-to-float v10, v0

    div-float/2addr v10, v9

    float-to-int v0, v10

    move/from16 p5, v0

    .line 881
    div-int/lit8 p5, p5, 0x2

    .line 882
    add-int v10, p4, v4

    add-int/lit8 v11, p5, 0x0

    add-int v12, v7, v4

    add-int/lit8 v12, v12, -0x1

    sub-int v12, v12, p4

    add-int/lit8 v13, v1, -0x1

    sub-int v13, v13, p5

    invoke-virtual {p1, v10, v11, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 884
    .end local v4    # "offsetX":I
    .end local v7    # "scaledViewWidth":I
    .end local v9    # "viewScale":F
    :cond_4
    move/from16 v0, p2

    int-to-float v10, v0

    int-to-float v11, v3

    div-float v9, v10, v11

    .line 885
    .restart local v9    # "viewScale":F
    move/from16 v0, p3

    int-to-float v10, v0

    div-float/2addr v10, v9

    float-to-int v6, v10

    .line 886
    .local v6, "scaledViewHeight":I
    sub-int v10, v1, v6

    int-to-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 888
    .local v5, "offsetY":I
    move/from16 v0, p4

    int-to-float v10, v0

    div-float/2addr v10, v9

    float-to-int v0, v10

    move/from16 p4, v0

    .line 889
    div-int/lit8 p4, p4, 0x2

    .line 890
    move/from16 v0, p5

    int-to-float v10, v0

    div-float/2addr v10, v9

    float-to-int v0, v10

    move/from16 p5, v0

    .line 891
    div-int/lit8 p5, p5, 0x2

    .line 892
    add-int v10, p5, v5

    add-int/lit8 v11, v3, -0x1

    sub-int v11, v11, p4

    add-int v12, v6, v5

    add-int/lit8 v12, v12, -0x1

    sub-int v12, v12, p5

    move/from16 v0, p4

    invoke-virtual {p1, v0, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_0
.end method

.method public isMobileKeyboard()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 373
    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    # getter for: Lcom/android/systemui/ImageWallpaper;->SUPPORT_MOBILE_KEYBOARD:Z
    invoke-static {v2}, Lcom/android/systemui/ImageWallpaper;->access$300(Lcom/android/systemui/ImageWallpaper;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 374
    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-virtual {v2}, Lcom/android/systemui/ImageWallpaper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 375
    .local v0, "conf":Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    if-ne v2, v1, :cond_0

    .line 376
    const-string v2, "ImageWallpaper"

    const-string v3, "MOBILEKEYBOARD_COVERED_YES"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    .end local v0    # "conf":Landroid/content/res/Configuration;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/view/SurfaceHolder;)V
    .locals 5
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 340
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onCreate(Landroid/view/SurfaceHolder;)V

    .line 341
    # getter for: Lcom/android/systemui/ImageWallpaper;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    const-string v0, "ImageWallpaper"

    const-string v3, "onCreate:"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    # getter for: Lcom/android/systemui/ImageWallpaper;->SUPPORT_TILT_WALLPAPER:Z
    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$200(Lcom/android/systemui/ImageWallpaper;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 351
    iget-object v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-virtual {v0}, Lcom/android/systemui/ImageWallpaper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "wallpaper_tilt_status"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, v3, Lcom/android/systemui/ImageWallpaper;->mWallpaperTiltSettingEnabled:Z

    .line 353
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-virtual {v0}, Lcom/android/systemui/ImageWallpaper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "wallpaper_tilt_status"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->wallpaperTiltSettingChanged:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 357
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->updateSurfaceSize(Landroid/view/SurfaceHolder;)V

    .line 358
    invoke-virtual {p0, v2}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->setOffsetNotificationsEnabled(Z)V

    .line 359
    return-void

    :cond_2
    move v0, v2

    .line 351
    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 363
    # getter for: Lcom/android/systemui/ImageWallpaper;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    const-string v0, "ImageWallpaper"

    const-string v1, "onDestroy:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_0
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->onDestroy()V

    .line 366
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mReceiver:Lcom/android/systemui/ImageWallpaper$DrawableEngine$WallpaperObserver;

    if-eqz v0, :cond_1

    .line 367
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mReceiver:Lcom/android/systemui/ImageWallpaper$DrawableEngine$WallpaperObserver;

    invoke-virtual {v0, v1}, Lcom/android/systemui/ImageWallpaper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 369
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    .line 370
    return-void
.end method

.method public onOffsetsChanged(FFFFII)V
    .locals 3
    .param p1, "xOffset"    # F
    .param p2, "yOffset"    # F
    .param p3, "xOffsetStep"    # F
    .param p4, "yOffsetStep"    # F
    .param p5, "xPixels"    # I
    .param p6, "yPixels"    # I

    .prologue
    .line 473
    # getter for: Lcom/android/systemui/ImageWallpaper;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    const-string v0, "ImageWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOffsetsChanged: xOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", yOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", xOffsetStep="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", yOffsetStep="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", xPixels="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", yPixels="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :cond_0
    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mXOffset:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mYOffset:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_3

    .line 480
    :cond_1
    # getter for: Lcom/android/systemui/ImageWallpaper;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$100()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 481
    const-string v0, "ImageWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Offsets changed to ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :cond_2
    iput p1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mXOffset:F

    .line 484
    iput p2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mYOffset:F

    .line 485
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOffsetsChanged:Z

    .line 486
    const-string v0, "onOffsetsChanged"

    invoke-virtual {p0, v0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->checkSurfaceSize(Ljava/lang/String;)V

    .line 487
    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->drawFrame()V

    .line 490
    :cond_3
    return-void
.end method

.method public onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 494
    invoke-super {p0, p1, p2, p3, p4}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 495
    # getter for: Lcom/android/systemui/ImageWallpaper;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 496
    const-string v0, "ImageWallpaper"

    const-string v1, "onSurfaceChanged:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :cond_0
    const-string v0, "onSurfaceChanged"

    invoke-virtual {p0, v0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->checkSurfaceSize(Ljava/lang/String;)V

    .line 498
    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->drawFrame()V

    .line 499
    return-void
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 511
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 512
    # getter for: Lcom/android/systemui/ImageWallpaper;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    const-string v0, "ImageWallpaper"

    const-string v1, "onSurfaceCreated:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceHeight:I

    iput v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceWidth:I

    .line 515
    return-void
.end method

.method public onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 503
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 504
    # getter for: Lcom/android/systemui/ImageWallpaper;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    const-string v0, "ImageWallpaper"

    const-string v1, "onSurfaceDestroyed:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceHeight:I

    iput v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceWidth:I

    .line 507
    return-void
.end method

.method public onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 4
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    const/4 v3, 0x1

    .line 519
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    .line 520
    # getter for: Lcom/android/systemui/ImageWallpaper;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 521
    const-string v1, "ImageWallpaper"

    const-string v2, "onSurfaceRedrawNeeded:"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-virtual {v1}, Lcom/android/systemui/ImageWallpaper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 523
    .local v0, "newRotation":I
    iget v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceWidth:I

    iget v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceHeight:I

    if-le v1, v2, :cond_1

    if-ne v0, v3, :cond_1

    .line 524
    const-string v1, "ImageWallpaper"

    const-string v2, "----onSurfaceRedrawNeeded need update"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    invoke-virtual {p0, v3}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->drawFrame(Z)V

    .line 530
    :goto_0
    return-void

    .line 528
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->drawFrame()V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 466
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 467
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 445
    # getter for: Lcom/android/systemui/ImageWallpaper;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    const-string v0, "ImageWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVisibilityChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVisible:Z

    if-eq v0, p1, :cond_2

    .line 448
    # getter for: Lcom/android/systemui/ImageWallpaper;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$100()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 449
    const-string v0, "ImageWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Visibility changed to visible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVisible:Z

    .line 452
    const-string v0, "onVisibilityChanged"

    invoke-virtual {p0, v0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->checkSurfaceSize(Ljava/lang/String;)V

    .line 454
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    iget-boolean v0, v0, Lcom/android/systemui/ImageWallpaper;->mTiltChanged:Z

    if-eqz v0, :cond_3

    .line 455
    const-string v0, "ImageWallpaper"

    const-string v1, "onVisibilityChanged(): Tilt status changed / call drawFrame with forceUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->drawFrame(Z)V

    .line 457
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/ImageWallpaper;->mTiltChanged:Z

    .line 462
    :cond_2
    :goto_0
    return-void

    .line 459
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->drawFrame()V

    goto :goto_0
.end method

.method public trimMemory(I)V
    .locals 3
    .param p1, "level"    # I

    .prologue
    const/4 v2, -0x1

    .line 325
    const/16 v0, 0xa

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 327
    # getter for: Lcom/android/systemui/ImageWallpaper;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    const-string v0, "ImageWallpaper"

    const-string v1, "trimMemory"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 331
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    .line 332
    iput v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundWidth:I

    .line 333
    iput v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundHeight:I

    .line 334
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    iget-object v0, v0, Lcom/android/systemui/ImageWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->forgetLoadedWallpaper()V

    .line 336
    :cond_1
    return-void
.end method

.method updateSurfaceSize(Landroid/view/SurfaceHolder;)V
    .locals 9
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 393
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->getDefaultDisplaySize()Landroid/graphics/Point;

    move-result-object v3

    .line 396
    .local v3, "p":Landroid/graphics/Point;
    iget v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundWidth:I

    if-lez v6, :cond_0

    iget v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundHeight:I

    if-gtz v6, :cond_2

    .line 398
    :cond_0
    iget-object v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    iget-object v6, v6, Lcom/android/systemui/ImageWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v6}, Landroid/app/WallpaperManager;->forgetLoadedWallpaper()V

    .line 399
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->updateWallpaperLocked()V

    .line 400
    iget v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundWidth:I

    if-lez v6, :cond_1

    iget v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundHeight:I

    if-gtz v6, :cond_2

    .line 402
    :cond_1
    iget v6, v3, Landroid/graphics/Point;->x:I

    iput v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundWidth:I

    .line 403
    iget v6, v3, Landroid/graphics/Point;->y:I

    iput v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundHeight:I

    .line 408
    :cond_2
    iget v6, v3, Landroid/graphics/Point;->x:I

    iget v7, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundWidth:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 409
    .local v5, "surfaceWidth":I
    iget v6, v3, Landroid/graphics/Point;->y:I

    iget v7, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundHeight:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 410
    .local v4, "surfaceHeight":I
    iget-object v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    # getter for: Lcom/android/systemui/ImageWallpaper;->SUPPORT_TILT_WALLPAPER:Z
    invoke-static {v6}, Lcom/android/systemui/ImageWallpaper;->access$200(Lcom/android/systemui/ImageWallpaper;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 411
    iget-object v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    iget-boolean v6, v6, Lcom/android/systemui/ImageWallpaper;->mWallpaperTiltSettingEnabled:Z

    if-eqz v6, :cond_4

    .line 412
    iget v6, v3, Landroid/graphics/Point;->x:I

    iget v7, v3, Landroid/graphics/Point;->x:I

    div-int/lit8 v7, v7, 0xa

    add-int/2addr v6, v7

    if-ge v5, v6, :cond_3

    .line 413
    iget v6, v3, Landroid/graphics/Point;->x:I

    iget v7, v3, Landroid/graphics/Point;->x:I

    div-int/lit8 v7, v7, 0xa

    add-int v5, v6, v7

    .line 415
    :cond_3
    iget v6, v3, Landroid/graphics/Point;->y:I

    iget v7, v3, Landroid/graphics/Point;->y:I

    div-int/lit8 v7, v7, 0xa

    add-int/2addr v6, v7

    if-ge v4, v6, :cond_4

    .line 416
    iget v6, v3, Landroid/graphics/Point;->y:I

    iget v7, v3, Landroid/graphics/Point;->y:I

    div-int/lit8 v7, v7, 0xa

    add-int v4, v6, v7

    .line 422
    :cond_4
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v2

    .line 423
    .local v2, "frame":Landroid/graphics/Rect;
    if-eqz v2, :cond_5

    .line 424
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 425
    .local v1, "dw":I
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 426
    .local v0, "dh":I
    if-ne v5, v1, :cond_5

    if-ne v4, v0, :cond_5

    .line 441
    .end local v0    # "dh":I
    .end local v1    # "dw":I
    :goto_0
    return-void

    .line 435
    :cond_5
    # getter for: Lcom/android/systemui/ImageWallpaper;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$100()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 436
    const-string v6, "ImageWallpaper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateSurfaceSize Width : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Height: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_6
    invoke-interface {p1, v5, v4}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    goto :goto_0
.end method
